import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUserModel with _$ChatUserModel {
  const factory ChatUserModel({
    required String userRole,
    required String createdAt,
    required bool? isUserBanned,
  }) = _ChatUserModel;

  const ChatUserModel._();

  factory ChatUserModel.empty() => const ChatUserModel(
        userRole: "",
        createdAt: "",
        isUserBanned: null,
      );
}
