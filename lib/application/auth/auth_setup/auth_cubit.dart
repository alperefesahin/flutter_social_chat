// ignore_for_file: depend_on_referenced_packages
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/application/auth/auth_management/auth_management_cubit.dart';
import 'package:flutter_production_app/domain/auth/auth_user_model.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends HydratedCubit<AuthState> {
  late final IAuthService _authService;
  late final IChatService _chatService;
  late final AuthManagementCubit _authManagementCubit;

  late StreamSubscription<AuthUserModel>? _authUserSubscription;

  AuthCubit() : super(AuthState.empty()) {
    _authService = getIt<IAuthService>();
    _chatService = getIt<IChatService>();

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
    emit(
      state.copyWith(
        isInProgress: true,
        authUser: authUser,
        isUserCheckedFromAuthService: true,
      ),
    );

    if (state.isLoggedIn) {
      await _chatService.connectTheCurrentUser();

      emit(state.copyWith(authUser: authUser, isInProgress: false));
    }
  }

  void changeUserName({required String userName}) {
    emit(state.copyWith(authUser: state.authUser.copyWith(userName: userName)));
  }

  Future<void> createProfile() async {
    _authManagementCubit = getIt<AuthManagementCubit>();
    final userProfilePhotoUrl = await _authManagementCubit.createProfile();

    if (userProfilePhotoUrl == null) {
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
    return AuthState.empty().copyWith(authUser: json["authUser"]);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return {"authUser": state.authUser.toJson()};
  }
}
