// ignore_for_file: depend_on_referenced_packages
import 'dart:async';
import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_production_app/domain/auth/auth_user_model.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  late final IAuthService _authService;
  late final IChatService _chatService;

  late StreamSubscription<AuthUserModel>? _authUserSubscription;

  AuthCubit() : super(AuthState.empty()) {
    _authService = getIt<IAuthService>();
    _chatService = getIt<IChatService>();

    _authUserSubscription =
        _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> signOut() async {
    _authService.signOut();
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    if (AuthUserModel.empty() == authUser) {
      await _chatService.disconnectUser();

      final unAuthanticatedChatUser = ChatUserModel.empty();

      emit(
        state.copyWith(
          authUser: authUser,
          chatUser: unAuthanticatedChatUser,
          isUserLoggedIn: false,
        ),
      );
    } else {
      // Authantication completed. ChatUserModel (it name is [chatUser] below) can not be empty or null
      final chatUser = await _chatService.connectTheCurrentUser().then(
        (OwnUser user) async {
          final chatUserModelOption =
              await _chatService.getSignedInUser(user: user);

          final chatUserModel =
              chatUserModelOption.fold(() => null, (userModel) => userModel);

          return chatUserModel;
        },
      );

      emit(
        state.copyWith(
            authUser: authUser, chatUser: chatUser!, isUserLoggedIn: true),
      );
    }
  }
}
