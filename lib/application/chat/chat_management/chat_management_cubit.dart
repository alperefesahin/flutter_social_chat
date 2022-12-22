// ignore_for_file: depend_on_referenced_packages, avoid_bool_literals_in_conditional_expressions

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/infrastructure/core/firestore_helpers.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

part 'chat_management_cubit.freezed.dart';
part 'chat_management_state.dart';

@injectable
class ChatManagementCubit extends Cubit<ChatManagementState> {
  final String randomGroupProfilePhoto = "https://picsum.photos/200/300";

  late final IChatService _chatService;
  late final FirebaseFirestore _firebaseFirestore;
  late final AuthCubit _authCubit;

  late StreamSubscription<List<Channel>>? _currentUserChannelsSubscription;

  ChatManagementCubit() : super(ChatManagementState.empty()) {
    _chatService = getIt<IChatService>();
    _firebaseFirestore = getIt<FirebaseFirestore>();
    _authCubit = getIt<AuthCubit>();

    _currentUserChannelsSubscription =
        _chatService.channelsThatTheUserIsIncluded.listen(_listenCurrentUserChannelsChangeStream);
  }

  @override
  Future<void> close() async {
    await _currentUserChannelsSubscription?.cancel();
    super.close();
  }

  void reset() {
    emit(
      state.copyWith(
        listOfSelectedUserIDs: {},
        channelName: "",
      ),
    );
  }

  void channelNameChanged({required String channelName}) {
    emit(state.copyWith(channelName: channelName));
  }

  void validateChannelName({required bool isChannelNameValid}) {
    emit(
      state.copyWith(isChannelNameValid: isChannelNameValid),
    );
  }

  Future<void> _listenCurrentUserChannelsChangeStream(List<Channel> currentUserChannels) async {
    emit(state.copyWith(currentUserChannels: currentUserChannels));
  }

  Future<void> sendCapturedPhotoToSelectedUsers({
    required String pathOfTheTakenPhoto,
    required int sizeOfTheTakenPhoto,
  }) async {
    if (state.isInProgress) {
      return;
    }

    emit(state.copyWith(isInProgress: true));

    final selectedUserId = state.listOfSelectedUserIDs.single;

    // we use .first command since there will be only 1 user, it can be single, last or first.
    // here we just want to be sure about it.
    final selectedMemberUserId = await state.currentUserChannels.map(
      (channel) async {
        final queryResponse = await channel.queryMembers(
          filter: Filter.equal('id', selectedUserId),
        );

        final member = queryResponse.members.single;
        return member.userId;
      },
    ).first;

    final channelId = state.currentUserChannels.firstWhere((channel) {
      return channel.state!.members.map((member) => member.userId).contains(selectedMemberUserId);
    }).id;

    await _chatService.sendPhotoAsMessageToTheSelectedUser(
      channelId: channelId!,
      pathOfTheTakenPhoto: pathOfTheTakenPhoto,
      sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
    );

    emit(state.copyWith(isInProgress: false));
  }

  Future<void> createNewChannel({
    required bool isCreateNewChatPageForCreatingGroup,
  }) async {
    String channelImageUrl = "";
    String channelName = state.channelName;
    final listOfMemberIDs = {...state.listOfSelectedUserIDs};

    final currentUserId = _authCubit.state.authUser.id;
    listOfMemberIDs.add(currentUserId);

    if (isCreateNewChatPageForCreatingGroup) {
      // If page opened for creating group case:
      // We can directly enter the group name and upload the image.
      channelName = state.channelName;
      channelImageUrl = randomGroupProfilePhoto;
    } else if (!isCreateNewChatPageForCreatingGroup) {
      // If page opened for creating [1-1 chat] case:
      // Channel name will be selected user's name, and the image of the channel
      // will be image of the selected user.

      if (listOfMemberIDs.length == 2) {
        final String selectedUserId =
            listOfMemberIDs.where((memberIDs) => memberIDs != currentUserId).toList().first;

        final selectedUserFromFirestore =
            await _firebaseFirestore.userDocument(userId: selectedUserId);

        final getSelectedUserDataFromFirestore = await selectedUserFromFirestore.get();

        final selectedUserData = getSelectedUserDataFromFirestore.data() as Map<String, dynamic>?;

        channelName = selectedUserData?["displayName"];

        channelImageUrl = selectedUserData?["photoUrl"];
      }
    }

    final isChannelNameValid =
        !isCreateNewChatPageForCreatingGroup ? true : state.isChannelNameValid;

    if (listOfMemberIDs.length >= 2 && isChannelNameValid) {
      await _chatService.createNewChannel(
        listOfMemberIDs: listOfMemberIDs.toList(),
        channelName: channelName,
        channelImageUrl: channelImageUrl,
      );
    }
  }

  void selectUserWhenCreatingAGroup({
    required User user,
    required bool isCreateNewChatPageForCreatingGroup,
  }) {
    final listOfSelectedUserIDs = {...state.listOfSelectedUserIDs};

    if (!isCreateNewChatPageForCreatingGroup) {
      if (listOfSelectedUserIDs.isEmpty) {
        listOfSelectedUserIDs.add(user.id);
      }
      emit(state.copyWith(listOfSelectedUserIDs: listOfSelectedUserIDs));
    } else if (isCreateNewChatPageForCreatingGroup) {
      listOfSelectedUserIDs.add(user.id);
      emit(state.copyWith(listOfSelectedUserIDs: listOfSelectedUserIDs));
    }
  }

  void selectUserToSendCapturedPhoto({
    required User user,
  }) {
    final listOfSelectedUserIDs = {...state.listOfSelectedUserIDs};

    listOfSelectedUserIDs.add(user.id);

    emit(state.copyWith(listOfSelectedUserIDs: listOfSelectedUserIDs));
  }

  /// If there is no a searched channel in the list of channels, then return false. If there is, return true.
  bool searchInsideExistingChannels({
    required List<Channel> listOfChannels,
    required String searchedText,
    required int index,
    required int lengthOfTheChannelMembers,
    required User oneToOneChatMember,
  }) {
    int result;
    final editedSearchedText = searchedText.toLowerCase().trim();

    if (lengthOfTheChannelMembers == 2) {
      final filteredChannels = listOfChannels
          .where(
            (channel) => oneToOneChatMember.name.toLowerCase().trim().contains(editedSearchedText),
          )
          .toList();

      result = filteredChannels.indexOf(listOfChannels[index]);
    } else {
      final filteredChannels = listOfChannels
          .where(
            (channel) => channel.name!.toLowerCase().trim().contains(editedSearchedText),
          )
          .toList();

      result = filteredChannels.indexOf(listOfChannels[index]);
    }

    if (result == -1) {
      return false;
    } else {
      return true;
    }
  }
}
