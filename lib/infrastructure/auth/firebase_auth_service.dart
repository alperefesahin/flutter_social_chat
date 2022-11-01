import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_production_app/domain/auth/auth_failure.dart';
import 'package:flutter_production_app/domain/auth/auth_user_model.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';

@LazySingleton(as: IAuthService)
class FirebaseAuthService implements IAuthService {
  FirebaseAuthService(this._firebaseAuth);
  
  final FirebaseAuth _firebaseAuth;

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          return AuthUserModel.empty();
        } else {
          return AuthUserModel(id: user.uid, phoneNumber: user.phoneNumber!);
        }
      },
    );
  }

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
    final StreamController<Either<AuthFailure, Tuple2<String, int?>>>
        streamController =
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
        });

    yield* streamController.stream;
  }

  @override
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      await _firebaseAuth.signInWithCredential(phoneAuthCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == "ınvalıd-verıfıcatıon-code" ||
          e.code == "invalid-verification-code") {
        return left(const AuthFailure.invalidVerificationCode());
      }
      return left(const AuthFailure.serverError());
    }
  }
}
