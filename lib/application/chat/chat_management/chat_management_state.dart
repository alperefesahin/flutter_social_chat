part of 'chat_management_cubit.dart';

@freezed
class ChatManagementState with _$ChatManagementState {
  const factory ChatManagementState({
    required String channelName,
    required String channelImageUrl,
    required Set<String> listOfSelectedUserIDs,
  }) = _Initial;

  factory ChatManagementState.empty() => const ChatManagementState(
        listOfSelectedUserIDs: {},
        channelName: "",
        channelImageUrl: "",
      );
}
