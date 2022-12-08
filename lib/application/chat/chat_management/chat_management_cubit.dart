// ignore_for_file: depend_on_referenced_packages, avoid_bool_literals_in_conditional_expressions

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  late final IChatService _chatService;
  late final FirebaseFirestore _firebaseFirestore;
  late final AuthCubit _authCubit;

  ChatManagementCubit() : super(ChatManagementState.empty()) {
    _chatService = getIt<IChatService>();
    _firebaseFirestore = getIt<FirebaseFirestore>();
    _authCubit = getIt<AuthCubit>();
  }

  void reset() {
    emit(
      state.copyWith(
        listOfSelectedUserIDs: {},
        channelName: "",
        channelImageUrl: "",
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

  Future<void> createNewChannel({
    required bool isCreateNewChatPageForCreatingGroup,
  }) async {
    String channelName = state.channelName;
    String channelImageUrl = state.channelImageUrl;
    final listOfMemberIDs = {...state.listOfSelectedUserIDs};

    final currentUserId = _authCubit.state.authUser.id;
    listOfMemberIDs.add(currentUserId);

    if (isCreateNewChatPageForCreatingGroup) {
      // If page opened for creating group case:
      // We can directly enter the group name and upload the image.
      channelName = state.channelName;
      channelImageUrl = state.channelImageUrl;
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

        channelName = selectedUserData?["displayName"] ?? selectedUserData?["userPhone"];

        //TODO: Replace picsum link with related constant image
        channelImageUrl = selectedUserData?["photoUrl"] ?? state.channelImageUrl;
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

  void selectUser({
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

  /// If there is no a searched channel in the list of channels, then return false. If there is, return true.
  bool searchInsideExistingChannels({
    required List<Channel> listOfChannels,
    required String searchedText,
    required int index,
  }) {
    final filteredChannels =
        listOfChannels.where((channel) => channel.name!.contains(searchedText)).toList();

    final result = filteredChannels.indexOf(listOfChannels[index]);

    if (result == -1) {
      return false;
    } else {
      return true;
    }
  }
}
