part of 'auth_management_cubit.dart';

@freezed
class AuthManagementState with _$AuthManagementState {
  const factory AuthManagementState({
    required bool isUserNameValid,
    required bool isInProgress,
    required String userProfilePhotoUrl,
    required String selectedImagePath,
  }) = _AuthManagementState;

  factory AuthManagementState.empty() => const AuthManagementState(
        isUserNameValid: false,
        isInProgress: false,
        userProfilePhotoUrl: "",
        selectedImagePath: "",
      );
}
