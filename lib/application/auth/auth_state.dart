part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel authUser,
    required bool isUserCheckedFromAuthService,
    required bool isInProgress,
    required bool isUserNameValid,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        authUser: AuthUserModel.empty(),
        isUserCheckedFromAuthService: false,
        isInProgress: false,
        isUserNameValid: false,
      );

  bool get isLoggedIn => authUser != AuthUserModel.empty();
}
