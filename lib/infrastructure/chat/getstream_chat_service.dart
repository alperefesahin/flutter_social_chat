// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:flutter_social_chat/domain/chat/chat_user_model.dart';
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart';
import 'package:flutter_social_chat/infrastructure/core/getstream_helpers.dart';
import 'package:flutter_social_chat/secrets.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

@LazySingleton(as: IChatService)
class GetstreamChatService implements IChatService {
  GetstreamChatService(this._firebaseAuth, this.streamChatClient);

  final IAuthService _firebaseAuth;
  final StreamChatClient streamChatClient;

  @override
  Stream<ChatUserModel> get chatAuthStateChanges {
    return streamChatClient.state.currentUserStream.map(
      (OwnUser? user) {
        if (user == null) {
          return ChatUserModel.empty();
        } else {
          return user.toDomain();
        }
      },
    );
  }

  @override
  Future<void> disconnectUser() async {
    await streamChatClient.disconnectUser();
  }

  @override
  Stream<List<Channel>> get channelsThatTheUserIsIncluded {
    return streamChatClient
        .queryChannels(
      filter: Filter.in_(
        'members',
        [streamChatClient.state.currentUser!.id],
      ),
    )
        .map((listOfChannels) {
      return listOfChannels;
    });
  }

  @override
  Future<void> connectTheCurrentUser() async {
    final signedInUserOption = await _firebaseAuth.getSignedInUser();

    final signedInUser = signedInUserOption.fold(
      () => throw Exception("Not authanticated"),
      (user) => user,
    );

    await streamChatClient.connectUser(
      User(
        id: signedInUser.id,
        name: signedInUser.userName,
        image: signedInUser.photoUrl,
      ),
      devToken,
    );
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

  @override
  Future<void> sendPhotoAsMessageToTheSelectedUser({
    required String channelId,
    required int sizeOfTheTakenPhoto,
    required String pathOfTheTakenPhoto,
  }) async {
    final randomMessageId = const Uuid().v1();

    final signedInUserOption = await _firebaseAuth.getSignedInUser();
    final signedInUser = signedInUserOption.fold(
      () => throw Exception("Not authanticated"),
      (user) => user,
    );
    final user = User(id: signedInUser.id);

    streamChatClient
        .sendImage(
      AttachmentFile(
        size: sizeOfTheTakenPhoto,
        path: pathOfTheTakenPhoto,
      ),
      channelId,
      "messaging",
    )
        .then((response) {
      // Successful upload, you can now attach this image
      // to an message that you then send to a channel
      final imageUrl = response.file;
      final image = Attachment(
        type: 'image',
        imageUrl: imageUrl,
      );

      final message = Message(
        user: user,
        id: randomMessageId,
        createdAt: DateTime.now(),
        attachments: [image],
      );

      streamChatClient.sendMessage(message, channelId, "messaging");
    });
  }
}
