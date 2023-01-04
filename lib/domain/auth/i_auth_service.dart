import 'package:flutter_social_chat/domain/auth/auth_failure.dart';
import 'package:flutter_social_chat/domain/auth/auth_user_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthService {
  Stream<AuthUserModel> get authStateChanges;

  Future<Option<AuthUserModel>> getSignedInUser();

  Future<void> signOut();

  Stream<Either<AuthFailure, Tuple2<String, int?>>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
    required int? resendToken,
  });

  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  });

  Future<void> updateDisplayName({required String displayName});

  Future<void> updatePhotoURL({required String photoURL});
}
