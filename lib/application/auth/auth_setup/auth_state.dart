part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel authUser,
    required bool isUserCheckedFromAuthService,
    required bool isInProgress,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        authUser: AuthUserModel.empty(),
        isUserCheckedFromAuthService: false,
        isInProgress: false,
      );

  bool get isLoggedIn => authUser != AuthUserModel.empty();
}
