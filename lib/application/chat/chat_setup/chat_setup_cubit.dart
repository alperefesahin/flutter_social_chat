// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

part 'chat_setup_state.dart';
part 'chat_setup_cubit.freezed.dart';

@lazySingleton
class ChatSetupCubit extends Cubit<ChatSetupState> {
  late StreamSubscription<ConnectionStatus>? _getstreamWebSocketConnectionSubscription;

  late final IChatService _chatService;

  ChatSetupCubit() : super(ChatSetupState.empty()) {
    _chatService = getIt<IChatService>();

    _getstreamWebSocketConnectionSubscription = _chatService.getstreamWebSocketConnectionChanges
        .listen(_listenChatUserAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _getstreamWebSocketConnectionSubscription?.cancel();

    super.close();
  }

  Future<void> _listenChatUserAuthStateChangesStream(
    ConnectionStatus webSocketConnectionStatus,
  ) async {
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
}
