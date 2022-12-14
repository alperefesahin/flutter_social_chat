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
  late StreamSubscription<ChatUserModel>? _chatUserSubscription;

  late final IChatService _chatService;

  ChatSetupCubit() : super(ChatSetupState.empty()) {
    _chatService = getIt<IChatService>();

    _chatUserSubscription =
        _chatService.chatAuthStateChanges.listen(_listenChatUserAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _chatUserSubscription?.cancel();

    super.close();
  }

  Future<void> _listenChatUserAuthStateChangesStream(
    ChatUserModel chatUser,
  ) async {
    emit(
      state.copyWith(chatUser: chatUser, isUserCheckedFromChatService: true),
    );
  }
}
