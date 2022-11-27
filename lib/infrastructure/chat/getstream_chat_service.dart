// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/secrets.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

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

/*   @override
  Future<Option<ChatUserModel>> getSignedInUser(
          {required OwnUser user}) async =>
      optionOf(user.toDomain()); */

  @override
  Future<void> disconnectUser() async {
    await streamChatClient.disconnectUser();
  }

  @override
  Future<void> connectTheCurrentUser() async {
    final signedInUserOption = await _firebaseAuth.getSignedInUser();

    final signedInUser = signedInUserOption.fold(
      () => throw Exception("Not authanticated"),
      (user) => user,
    );

    await streamChatClient.connectUser(User(id: signedInUser.id), devToken);
  }

  @override
  Future<void> createNewChannel({
    required List<String> listOfMemberIDs,
    required String channelName,
    required String channelImageUrl,
  }) async {
    final randomId = const Uuid().v1();

    await streamChatClient.createChannel(
      "messaging",
      channelId: randomId,
      channelData: {
        "members": listOfMemberIDs,
        "name": channelName,
        "image": channelImageUrl,
      },
    );
  }
}
