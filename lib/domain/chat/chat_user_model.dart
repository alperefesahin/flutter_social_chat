import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUserModel with _$ChatUserModel {
  const factory ChatUserModel({
    required String createdAt,
    required String? userRole,
    required bool? isUserBanned,
  }) = _ChatUserModel;

  const ChatUserModel._();

  factory ChatUserModel.empty() => const ChatUserModel(
        createdAt: "",
        userRole: null,
        isUserBanned: null,
      );
}
