import 'package:date_format/date_format.dart';
import 'package:flutter_social_chat/domain/chat/chat_user_model.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

extension GetstreamUserDomainX on OwnUser {
  ChatUserModel toDomain() {
    return ChatUserModel(
      createdAt: formatDate(createdAt ?? DateTime.now(), [yyyy, '-', mm, '-', dd]),
      userRole: role?.toUpperCase() ?? '?',
      isUserBanned: banned,
    );
  }
}
