// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_production_app/domain/chat/chat_user_model.dart';

abstract class IChatService {
  Stream<ChatUserModel> get chatAuthStateChanges;

  Future<void> disconnectUser();

  Future<void> connectTheCurrentUser();

  Future<void> createNewChannel({
    required List<String> listOfMemberIDs,
    required String channelName,
    required String channelImageUrl,
  });
}
