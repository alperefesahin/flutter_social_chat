// ignore_for_file: depend_on_referenced_packages

import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

abstract class IChatService {
  Stream<ConnectionStatus> get getstreamWebSocketConnectionChanges;

  Future<void> disconnectUser();

  Future<void> connectTheCurrentUser();

  Future<void> createNewChannel({
    required List<String> listOfMemberIDs,
    required String channelName,
    required String channelImageUrl,
  });
}
