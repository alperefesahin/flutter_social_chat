part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel authUser,
    required bool isUserLoggedIn,
    required bool isInProgress,
    required bool isUserNameValid,
  }) = _AuthState;

  factory AuthState.empty() => AuthState(
        authUser: AuthUserModel.empty(),
        isUserLoggedIn: false,
        isInProgress: false,
        isUserNameValid: false,
      );
}
