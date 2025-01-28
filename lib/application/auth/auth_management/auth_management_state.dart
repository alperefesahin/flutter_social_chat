import 'package:equatable/equatable.dart';

class AuthManagementState extends Equatable {
  const AuthManagementState({
    this.isUserNameValid = false,
    this.isInProgress = false,
    this.userProfilePhotoUrl = '',
    this.selectedImagePath = '',
  });

  final bool isUserNameValid;
  final bool isInProgress;
  final String userProfilePhotoUrl;
  final String selectedImagePath;

  @override
  List<Object?> get props => [
        isUserNameValid,
        isInProgress,
        userProfilePhotoUrl,
        selectedImagePath,
      ];

  AuthManagementState copyWith({
    bool? isUserNameValid,
    bool? isInProgress,
    String? userProfilePhotoUrl,
    String? selectedImagePath,
  }) {
    return AuthManagementState(
      isUserNameValid: isUserNameValid ?? this.isUserNameValid,
      isInProgress: isInProgress ?? this.isInProgress,
      userProfilePhotoUrl: userProfilePhotoUrl ?? this.userProfilePhotoUrl,
      selectedImagePath: selectedImagePath ?? this.selectedImagePath,
    );
  }

  factory AuthManagementState.empty() => const AuthManagementState();
}
