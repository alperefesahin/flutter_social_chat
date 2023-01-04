// ignore_for_file: depend_on_referenced_packages

import 'package:date_format/date_format.dart';
import 'package:flutter_social_chat/domain/chat/chat_user_model.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

extension GetstreamUserDomainX on OwnUser {
  ChatUserModel toDomain() {
    return ChatUserModel(
      createdAt: formatDate(createdAt, [yyyy, '-', mm, '-', dd]),
      userRole: role?.toUpperCase() ?? "?",
      isUserBanned: banned,
    );
  }
}
