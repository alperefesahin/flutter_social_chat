// ignore_for_file: depend_on_referenced_packages, avoid_bool_literals_in_conditional_expressions

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart';
import 'package:flutter_social_chat/infrastructure/core/firestore_helpers.dart';
import 'package:flutter_social_chat/injection.dart';
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
        isInProgress: false,
        isChannelCreated: false,
        isCapturedPhotoSent: false,
        listOfSelectedUsers: {},
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

    final channelId = state.currentUserChannels[state.userIndex].id;

    // For showing the progress indicator, and well UX.
    await Future.delayed(const Duration(seconds: 1));

    await _chatService.sendPhotoAsMessageToTheSelectedUser(
      channelId: channelId!,
      pathOfTheTakenPhoto: pathOfTheTakenPhoto,
      sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
    );

    emit(state.copyWith(isInProgress: false, isCapturedPhotoSent: true));
  }

  Future<void> createNewChannel({
    required bool isCreateNewChatPageForCreatingGroup,
  }) async {
    if (state.isInProgress) {
      return;
    }

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
      emit(state.copyWith(isInProgress: true, isChannelCreated: false));

      await _chatService.createNewChannel(
        listOfMemberIDs: listOfMemberIDs.toList(),
        channelName: channelName,
        channelImageUrl: channelImageUrl,
      );

      emit(state.copyWith(isInProgress: false, isChannelCreated: true));
    }
  }

  void selectUserWhenCreatingAGroup({
    required User user,
    required bool isCreateNewChatPageForCreatingGroup,
  }) {
    final listOfSelectedUserIDs = {...state.listOfSelectedUserIDs};
    final listOfSelectedUsers = {...state.listOfSelectedUsers};

    if (!isCreateNewChatPageForCreatingGroup) {
      if (listOfSelectedUserIDs.isEmpty) {
        listOfSelectedUserIDs.add(user.id);
        listOfSelectedUsers.add(user);
      }
      emit(
        state.copyWith(
          listOfSelectedUserIDs: listOfSelectedUserIDs,
          listOfSelectedUsers: listOfSelectedUsers,
        ),
      );
    } else if (isCreateNewChatPageForCreatingGroup) {
      listOfSelectedUserIDs.add(user.id);
      listOfSelectedUsers.add(user);

      emit(
        state.copyWith(
          listOfSelectedUserIDs: listOfSelectedUserIDs,
          listOfSelectedUsers: listOfSelectedUsers,
        ),
      );
    }
  }

  void selectUserToSendCapturedPhoto({
    required User user,
    required int userIndex,
  }) {
    final listOfSelectedUserIDs = {...state.listOfSelectedUserIDs};

    if (listOfSelectedUserIDs.isEmpty) {
      listOfSelectedUserIDs.add(user.id);
    }

    emit(
      state.copyWith(listOfSelectedUserIDs: listOfSelectedUserIDs, userIndex: userIndex),
    );
  }

  void removeUserToSendCapturedPhoto({
    required User user,
  }) {
    final listOfSelectedUserIDs = {...state.listOfSelectedUserIDs};

    listOfSelectedUserIDs.remove(user.id);

    emit(
      state.copyWith(listOfSelectedUserIDs: listOfSelectedUserIDs, userIndex: 0),
    );
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
