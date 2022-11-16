// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

extension GetstreamUserDomainX on User {
  ChatUserModel toDomain() {
    return ChatUserModel(
      createdAt: createdAt,
      lastActive: lastActive,
      teams: teams,
    );
  }
}
