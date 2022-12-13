part of 'chat_setup_cubit.dart';

@freezed
class ChatSetupState with _$ChatSetupState {
  const factory ChatSetupState({
    required ChatUserModel chatUser,
    required ConnectionStatus webSocketConnectionStatus,
    required bool isUserCheckedFromChatService,
  }) = _ChatSetupState;

  const ChatSetupState._();

  factory ChatSetupState.empty() => ChatSetupState(
        chatUser: ChatUserModel.empty(),
        webSocketConnectionStatus: ConnectionStatus.disconnected,
        isUserCheckedFromChatService: false,
      );

  bool get isChatUserConnected => chatUser != ChatUserModel.empty();
}
