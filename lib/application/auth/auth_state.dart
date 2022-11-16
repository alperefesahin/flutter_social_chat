part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel authUser,
    required bool isUserLoggedIn,
    required bool isInProgress,
  }) = _AuthState;

  factory AuthState.empty() => AuthState(
        authUser: AuthUserModel.empty(),
        isUserLoggedIn: false,
        isInProgress: false,
      );
}
