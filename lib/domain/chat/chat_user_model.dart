import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUserModel with _$ChatUserModel {
  const factory ChatUserModel({
    required String id,
    required List<String> teams,
    required DateTime? createdAt,
    required DateTime? lastActive,
  }) = _ChatUserModel;

  const ChatUserModel._();

  factory ChatUserModel.empty() => const ChatUserModel(
        id: '',
        teams: [],
        createdAt: null,
        lastActive: null,
      );
}
