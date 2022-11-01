import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String phoneNumber,
    String? displayName,
    String? userName,
    String? photoUrl,
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => const AuthUserModel(
        id: '',
        phoneNumber: '',
        displayName: '',
        userName: '',
        photoUrl: '',
      );
}
