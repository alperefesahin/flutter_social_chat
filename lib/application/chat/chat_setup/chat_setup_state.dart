part of 'chat_setup_cubit.dart';

@freezed
class ChatSetupState with _$ChatSetupState {
  const factory ChatSetupState({
    required ChatUserModel chatUser,
    required ConnectionStatus webSocketConnectionStatus,
    required bool isChatUserConnected,
  }) = _ChatSetupState;

  factory ChatSetupState.empty() => ChatSetupState(
        chatUser: ChatUserModel.empty(),
        isChatUserConnected: false,
        webSocketConnectionStatus: ConnectionStatus.disconnected,
      );
}
