import 'dart:async';

import 'package:flutter_social_chat/view/sms_verification/cubit/auth_state.dart';
import 'package:flutter_social_chat/domain/auth/auth_user_model.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  final IAuthService _authService;
  final IChatService _chatService;
  StreamSubscription<AuthUserModel>? _authUserSubscription;

  AuthCubit({
    required IAuthService authService,
    required IChatService chatService,
  })  : _authService = authService,
        _chatService = chatService,
        super(AuthState.empty()) {
    _authUserSubscription = _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> signOut() async {
    await _authService.signOut();
    await _chatService.disconnectUser();
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    emit(state.copyWith(isInProgress: true, authUser: authUser, isUserCheckedFromAuthService: true));

    if (state.isLoggedIn) {
      await _chatService.connectTheCurrentUser();
      emit(state.copyWith(authUser: authUser, isInProgress: false));
    }
  }

  void changeUserName({required String userName}) {
    emit(state.copyWith(authUser: state.authUser.copyWith(userName: userName)));
  }

  Future<void> completeProfileSetup(Future<String> getProfilePhotoUrl) async {
    final userProfilePhotoUrl = await getProfilePhotoUrl;

    if (userProfilePhotoUrl == '') {
      return;
    }

    emit(
      state.copyWith(
        authUser: state.authUser.copyWith(
          photoUrl: userProfilePhotoUrl,
          isOnboardingCompleted: true,
        ),
      ),
    );
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.empty().copyWith(authUser: json['authUser']);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return {'authUser': state.authUser.toJson()};
  }
}
