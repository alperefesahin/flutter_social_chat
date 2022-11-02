part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState() = _ChatState;

  factory ChatState.empty() => const ChatState();
}
