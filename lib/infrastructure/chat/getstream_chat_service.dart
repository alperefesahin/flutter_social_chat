import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/secrets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:flutter_production_app/infrastructure/core/getstream_helpers.dart';

@LazySingleton(as: IChatService)
class GetstreamChatService implements IChatService {
  GetstreamChatService(this._firebaseAuth, this.streamChatClient);

  final IAuthService _firebaseAuth;
  final StreamChatClient streamChatClient;

  @override
  Stream<ConnectionStatus> get getstreamWebSocketConnectionChanges {
    return streamChatClient.wsConnectionStatusStream.map(
      (connectionStatus) {
        debugPrint("Connection Status: ${connectionStatus.name}");
        if (connectionStatus.name == ConnectionStatus.connecting.name) {
          return ConnectionStatus.connecting;
        } else if (connectionStatus.name == ConnectionStatus.connected.name) {
          return ConnectionStatus.connected;
        } else {
          return ConnectionStatus.disconnected;
        }
      },
    );
  }

  @override
  Future<Option<ChatUserModel>> getSignedInUser(
          {required OwnUser user}) async =>
      optionOf(user.toDomain());

  @override
  Future<Channel> createOrWatchChannel({
    required String type,
    required String id,
    Map<String, Object?>? extraData,
  }) async {
    final channel =
        streamChatClient.channel(type, id: id, extraData: extraData);

    await channel.watch();

    return channel;
  }

  @override
  Future<void> disconnectUser() async {
    await streamChatClient.disconnectUser();
  }

  @override
  Future<void> connectTheCurrentUser() async {
    final signedInUserOption = await _firebaseAuth.getSignedInUser();

    final signedInUser = signedInUserOption.fold(
        () => throw Exception("Not authanticated"), (user) => user);

    await streamChatClient.connectUser(User(id: signedInUser.id), devToken);
  }
}
