part of 'chat_cubit.dart';

@freezed
class ChatSetupState with _$ChatSetupState {
  const factory ChatSetupState({
    required ChatUserModel chatUserModel,
    required ConnectionStatus webSocketConnectionStatus,
    required bool isChatUserConnected,
  }) = _ChatSetupState;

  factory ChatSetupState.empty() => ChatSetupState(
        chatUserModel: ChatUserModel.empty(),
        isChatUserConnected: false,
        webSocketConnectionStatus: ConnectionStatus.disconnected,
      );
}
