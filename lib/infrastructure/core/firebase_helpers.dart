// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_social_chat/domain/auth/auth_user_model.dart';

extension FirebaseUserDomainX on User {
  AuthUserModel toDomain() {
    return AuthUserModel(
      id: uid,
      phoneNumber: phoneNumber!,
      photoUrl: photoURL,
      userName: displayName,
      isOnboardingCompleted: (photoURL == null && displayName == null) ? false : true,
    );
  }
}
