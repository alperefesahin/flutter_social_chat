part of 'chat_management_cubit.dart';

@freezed
class ChatManagementState with _$ChatManagementState {
  const factory ChatManagementState({
    required bool isInProgress,
    required bool isChannelNameValid,
    required bool isChannelCreated,
    required bool isCapturedPhotoSent,
    required String channelName,
    required int userIndex,
    required Set<String> listOfSelectedUserIDs,
    required Set<User> listOfSelectedUsers,
    required List<Channel> currentUserChannels,
  }) = _ChatManagementState;

  factory ChatManagementState.empty() => const ChatManagementState(
        isInProgress: false,
        isChannelNameValid: false,
        isChannelCreated: false,
        isCapturedPhotoSent: false,
        channelName: "",
        userIndex: 0,
        listOfSelectedUserIDs: {},
        listOfSelectedUsers: {},
        currentUserChannels: [],
      );
}
