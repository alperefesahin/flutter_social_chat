import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

abstract class IChatService {
  Future<Option<ChatUserModel>> getSignedInUser({
    required OwnUser user,
  });

  Channel channelClient({
    required String channelType,
    String? id,
  });

  Future<void> disconnectUser();

  Future<OwnUser> connectTheCurrentUser();

  Future<ChannelState> watchChannelUpdates();

  Future<ChannelState> createNewChannel();
}
