import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUserModel with _$ChatUserModel {
  const factory ChatUserModel({
    required String id,
    required String name,
    required String image,
    required String phoneNumber,
    required List<String> teams,
    required int totalUnreadCount,
    required DateTime? createdAt,
    required DateTime? lastActive,
  }) = _ChatUserModel;

  const ChatUserModel._();

  factory ChatUserModel.empty() => const ChatUserModel(
        id: '',
        name: '',
        image: '',
        phoneNumber: '',
        teams: [],
        totalUnreadCount: 0,
        createdAt: null,
        lastActive: null,
      );
}
