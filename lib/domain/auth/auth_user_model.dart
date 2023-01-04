import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.freezed.dart';
part 'auth_user_model.g.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String phoneNumber,
    required bool isOnboardingCompleted,
    String? userName,
    String? photoUrl,
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => const AuthUserModel(
        id: '',
        phoneNumber: '',
        isOnboardingCompleted: false,
        userName: '',
        photoUrl: '',
      );

  factory AuthUserModel.fromJson(Map<String, dynamic> json) => _$AuthUserModelFromJson(json);
}
