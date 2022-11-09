import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

abstract class IChatService {
  Stream<ConnectionStatus> get getstreamWebSocketConnectionChanges;

  Future<Option<ChatUserModel>> getSignedInUser({required OwnUser user});

  Future<void> disconnectUser();

  Future<void> connectTheCurrentUser();

  /// If the channel already exist, then just watch the channel.
  Future<void> createOrWatchChannel({
    required String type,
    required String id,
    Map<String, Object?>? extraData,
  });
}
