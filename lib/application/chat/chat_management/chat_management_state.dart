part of 'chat_management_cubit.dart';

@freezed
class ChatManagementState with _$ChatManagementState {
  const factory ChatManagementState({
    required String channelName,
    required String channelImageUrl,
    required Set<String> listOfSelectedUserIDs,
    required List<Channel> filteredChannels,
  }) = _Initial;

  factory ChatManagementState.empty() => const ChatManagementState(
        listOfSelectedUserIDs: {},
        channelName: "",
        channelImageUrl: "https://picsum.photos/200/300",
        filteredChannels: [],
      );
}
