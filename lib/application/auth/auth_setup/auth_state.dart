import 'package:flutter_social_chat/domain/auth/auth_user_model.dart';

class AuthState {
  final AuthUserModel authUser;
  final bool isUserCheckedFromAuthService;
  final bool isInProgress;

  // Constructor
  const AuthState({
    required this.authUser,
    required this.isUserCheckedFromAuthService,
    required this.isInProgress,
  });

  // Empty state factory
  factory AuthState.empty() {
    return AuthState(
      authUser: AuthUserModel.empty(),
      isUserCheckedFromAuthService: false,
      isInProgress: false,
    );
  }

  // Helper getter to check if the user is logged in
  bool get isLoggedIn => authUser != AuthUserModel.empty();

  AuthState copyWith({
    AuthUserModel? authUser,
    bool? isUserCheckedFromAuthService,
    bool? isInProgress,
  }) {
    return AuthState(
      authUser: authUser ?? this.authUser,
      isUserCheckedFromAuthService: isUserCheckedFromAuthService ?? this.isUserCheckedFromAuthService,
      isInProgress: isInProgress ?? this.isInProgress,
    );
  }
}
