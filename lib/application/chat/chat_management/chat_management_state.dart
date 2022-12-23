part of 'chat_management_cubit.dart';

@freezed
class ChatManagementState with _$ChatManagementState {
  const factory ChatManagementState({
    required bool isInProgress,
    required bool isChannelNameValid,
    required String channelName,
    required Set<String> listOfSelectedUserIDs,
    required List<Channel> currentUserChannels,
  }) = _ChatManagementState;

  factory ChatManagementState.empty() => const ChatManagementState(
        isInProgress: false,
        isChannelNameValid: false,
        channelName: "",
        listOfSelectedUserIDs: {},
        currentUserChannels: [],
      );
}
