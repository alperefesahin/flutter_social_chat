// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_social_chat/domain/chat/chat_user_model.dart';
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart';
import 'package:flutter_social_chat/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

part 'chat_setup_state.dart';
part 'chat_setup_cubit.freezed.dart';

@lazySingleton
class ChatSetupCubit extends HydratedCubit<ChatSetupState> {
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

  @override
  ChatSetupState? fromJson(Map<String, dynamic> json) {
    return ChatSetupState.empty().copyWith(
      chatUser: json["chatUser"],
    );
  }

  @override
  Map<String, dynamic>? toJson(ChatSetupState state) {
    return {
      "chatUser": state.chatUser.toJson(),
    };
  }
}
