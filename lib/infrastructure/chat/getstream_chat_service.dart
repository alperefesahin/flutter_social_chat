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
  GetstreamChatService(this._firebaseAuth);

  final IAuthService _firebaseAuth;

  final streamChatClient = StreamChatClient(
    getstreamApiKey,
    logLevel: Level.INFO,
  );

  @override
  Future<Option<ChatUserModel>> getSignedInUser(
          {required OwnUser user}) async =>
      optionOf(await user.toDomain());

  @override
  Channel channelClient({required String channelType, String? id}) =>
      streamChatClient.channel(channelType, id: id);

  @override
  Future<ChannelState> createNewChannel() async {
    final createdChannel =
        await channelClient(channelType: 'messaging', id: 'flutterdevs')
            .create();

    return createdChannel;
  }

  @override
  Future<void> disconnectUser() async {
    await streamChatClient.disconnectUser();
  }

  @override
  Future<OwnUser> connectTheCurrentUser() async {
    final userIdOption = await _firebaseAuth.getSignedInUser();
    final userId = userIdOption.fold(() => null, (user) => user.id);

    final devToken = streamChatClient.devToken(userId!).rawValue;

    final signedInUserOption = await _firebaseAuth.getSignedInUser();
    final signedInUser = signedInUserOption.fold(
        () => throw Exception("Not authanticated"), (user) => user);

    final connectedUser =
        await streamChatClient.connectUser(User(id: signedInUser.id), devToken);

    return connectedUser;
  }

  @override
  Future<ChannelState> watchChannelUpdates() async {
    final channelUpdates =
        await channelClient(channelType: 'messaging', id: 'flutterdevs')
            .watch();

    return channelUpdates;
  }
}
