import 'package:flutter_social_chat/domain/chat/chat_user_model.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

abstract class IChatService {
  Stream<ChatUserModel> get chatAuthStateChanges;

  Stream<List<Channel>> get channelsThatTheUserIsIncluded;

  Future<void> disconnectUser();

  Future<void> connectTheCurrentUser();

  Future<void> createNewChannel({
    required List<String> listOfMemberIDs,
    required String channelName,
    required String channelImageUrl,
  });

  Future<void> sendPhotoAsMessageToTheSelectedUser({
    required int sizeOfTheTakenPhoto,
    required String channelId,
    required String pathOfTheTakenPhoto,
  });
}
