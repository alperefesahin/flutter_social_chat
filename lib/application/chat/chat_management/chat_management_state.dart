part of 'chat_management_cubit.dart';

@freezed
class ChatManagementState with _$ChatManagementState {
  const factory ChatManagementState({
    required String channelName,
    required Set<String> listOfSelectedUserIDs,
    required List<Channel> filteredChannels,
    required bool isChannelNameValid,
  }) = _ChatManagementState;

  factory ChatManagementState.empty() => const ChatManagementState(
        listOfSelectedUserIDs: {},
        channelName: "",
        filteredChannels: [],
        isChannelNameValid: false,
      );
}
