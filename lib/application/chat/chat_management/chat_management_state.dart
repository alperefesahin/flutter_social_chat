part of 'chat_management_cubit.dart';

@freezed
class ChatManagementState with _$ChatManagementState {
  const factory ChatManagementState({
    required List<String> listOfSelectedUserIDs,
    required String channelName,
    required String channelImageUrl,
  }) = _Initial;

  factory ChatManagementState.empty() => const ChatManagementState(
        listOfSelectedUserIDs: [],
        channelName: "",
        channelImageUrl: "",
      );
}
