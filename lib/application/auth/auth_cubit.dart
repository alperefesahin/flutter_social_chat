// ignore_for_file: depend_on_referenced_packages
import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_production_app/domain/auth/auth_user_model.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/injection.dart';
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  late final IAuthService _authService;
  late StreamSubscription<AuthUserModel>? _authUserSubscription;

  AuthCubit() : super(AuthState.empty()) {
    _authService = getIt<IAuthService>();
    _authUserSubscription = _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    if (AuthUserModel.empty() == authUser) {
      emit(
        state.copyWith(userModel: authUser, isUserLoggedIn: false),
      );
    } else {
      emit(
        state.copyWith(userModel: authUser, isUserLoggedIn: true),
      );
    }
  }

  Future<void> signOut() async {
    _authService.signOut();
  }
}
