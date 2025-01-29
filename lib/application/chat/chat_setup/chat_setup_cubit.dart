import 'dart:async';

import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_state.dart';
import 'package:flutter_social_chat/domain/chat/chat_user_model.dart';
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:get_it/get_it.dart';

class ChatSetupCubit extends HydratedCubit<ChatSetupState> {
  late final StreamSubscription<ChatUserModel>? _chatUserSubscription;
  late final IChatService _chatService;

  ChatSetupCubit() : super(ChatSetupState.empty()) {
    _chatService = GetIt.instance<IChatService>();

    _chatUserSubscription = _chatService.chatAuthStateChanges.listen(_listenChatUserAuthStateChangesStream);
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

  Map<String, dynamic> toJson(ChatSetupState state) {
    return {
      'chatUser': state.chatUser.toJson(),
    };
  }

  ChatSetupState fromJson(Map<String, dynamic> json) {
    return ChatSetupState.empty().copyWith(
      chatUser: ChatUserModel.fromJson(json['chatUser']),
    );
  }
}
