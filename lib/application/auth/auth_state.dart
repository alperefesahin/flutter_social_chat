part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel authUser,
    required ChatUserModel chatUser,
    required bool isUserLoggedIn,
    required bool isInProgress,
  }) = _AuthState;

  factory AuthState.empty() => AuthState(
        authUser: AuthUserModel.empty(),
        chatUser: ChatUserModel.empty(),
        isUserLoggedIn: false,
        isInProgress: false,
      );
}
