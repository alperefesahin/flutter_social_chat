import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_social_chat/domain/auth/auth_failure.dart';
import 'package:flutter_social_chat/domain/auth/auth_user_model.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:flutter_social_chat/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_social_chat/infrastructure/core/firestore_helpers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthService)
class FirebaseAuthService implements IAuthService {
  FirebaseAuthService(this._firebaseAuth, this._firestore);

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          return AuthUserModel.empty();
        } else {
          return user.toDomain();
        }
      },
    );
  }

  @override
  Future<Option<AuthUserModel>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Stream<Either<AuthFailure, Tuple2<String, int?>>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
    required int? resendToken,
  }) async* {
    final StreamController<Either<AuthFailure, Tuple2<String, int?>>> streamController =
        StreamController<Either<AuthFailure, Tuple2<String, int?>>>();

    await _firebaseAuth.verifyPhoneNumber(
      forceResendingToken: resendToken,
      timeout: timeout,
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        //! Android Only!!!
        await _firebaseAuth.signInWithCredential(credential);
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Wait for the user to enter the SMS code
        streamController.add(right(tuple2(verificationId, resendToken)));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      verificationFailed: (FirebaseAuthException e) {
        late final Either<AuthFailure, Tuple2<String, int?>> result;
        if (e.code == 'too-many-requests') {
          result = left(const AuthFailure.tooManyRequests());
        } else if (e.code == 'app-not-authorized') {
          result = left(const AuthFailure.deviceNotSupported());
        } else {
          result = left(const AuthFailure.serverError());
        }
        streamController.add(result);
      },
    );

    yield* streamController.stream;
  }

  @override
  Future<void> updateDisplayName({required String displayName}) async {
    await _firebaseAuth.currentUser!.updateDisplayName(displayName);
  }

  @override
  Future<void> updatePhotoURL({required String photoURL}) async {
    await _firebaseAuth.currentUser!.updatePhotoURL(photoURL);
  }

  @override
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      await _firebaseAuth.signInWithCredential(phoneAuthCredential).then(
        (userCredential) async {
          final userDoc = await _firestore.currentUserDocument();

          final user = userCredential.user!;
          return userDoc.set(
            {
              "userPhone": user.phoneNumber!,
              "uid": user.uid,
            },
            SetOptions(merge: true),
          );
        },
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == "ınvalıd-verıfıcatıon-code" || e.code == "invalid-verification-code") {
        return left(const AuthFailure.invalidVerificationCode());
      }
      return left(const AuthFailure.serverError());
    }
  }
}
