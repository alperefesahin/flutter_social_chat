import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUserModel with _$ChatUserModel {
  const factory ChatUserModel({
    required List<String> teams,
    required DateTime? createdAt,
    required DateTime? lastActive,
  }) = _ChatUserModel;

  const ChatUserModel._();

  factory ChatUserModel.empty() => const ChatUserModel(
        teams: [],
        createdAt: null,
        lastActive: null,
      );
}
