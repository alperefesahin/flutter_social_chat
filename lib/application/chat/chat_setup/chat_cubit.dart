// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

@LazySingleton()
class ChatSetup extends Cubit<ChatSetupState> {
  late final IChatService _chatService;
  late StreamSubscription<ConnectionStatus>?
      _getstreamWebSocketConnectionSubscription;

  ChatSetup() : super(ChatSetupState.empty()) {
    _chatService = getIt<IChatService>();

    _getstreamWebSocketConnectionSubscription = _chatService
        .getstreamWebSocketConnectionChanges
        .listen(_listenChatUserAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _getstreamWebSocketConnectionSubscription?.cancel();
    super.close();
  }

  Future<void> _listenChatUserAuthStateChangesStream(
      ConnectionStatus webSocketConnectionStatus) async {
    if (ConnectionStatus.connected == webSocketConnectionStatus) {
      emit(
        state.copyWith(
          isChatUserConnected: true,
          webSocketConnectionStatus: webSocketConnectionStatus,
        ),
      );
    } else if (ConnectionStatus.connecting == webSocketConnectionStatus) {
      emit(
        state.copyWith(
          isChatUserConnected: false,
          webSocketConnectionStatus: webSocketConnectionStatus,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isChatUserConnected: false,
          webSocketConnectionStatus: webSocketConnectionStatus,
        ),
      );
    }
  }

  Future<void> createAndWatchChannel({
    required String type,
    required String id,
  }) async {
    await _chatService.createOrWatchChannel(type: type, id: id);
  }
}
