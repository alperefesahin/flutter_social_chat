import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

extension GetstreamUserDomainX on User {
  ChatUserModel toDomain() {
    return ChatUserModel(
      id: id,
      createdAt: createdAt,
      lastActive: lastActive,
      teams: teams,
    );
  }
}
