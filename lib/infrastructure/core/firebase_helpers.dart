import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_production_app/domain/auth/auth_user_model.dart';

extension FirebaseUserDomainX on User {
  AuthUserModel toDomain() {
    return AuthUserModel(id: uid, phoneNumber: phoneNumber!);
  }
}
