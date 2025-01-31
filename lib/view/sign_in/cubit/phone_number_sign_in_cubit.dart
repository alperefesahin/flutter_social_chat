import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/domain/auth/auth_failure.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:fpdart/fpdart.dart';

class PhoneNumberSignInCubit extends Cubit<PhoneNumberSignInState> {
  StreamSubscription<Either<AuthFailure, (String, int?)>>? _phoneNumberSignInSubscription;
  final IAuthService _authService;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);

  PhoneNumberSignInCubit(this._authService) : super(PhoneNumberSignInState.empty());

  void phoneNumberChanged({required String phoneNumber}) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void updateNextButtonStatus({required bool isPhoneNumberInputValidated}) {
    emit(state.copyWith(isPhoneNumberInputValidated: isPhoneNumberInputValidated));
  }

  void smsCodeChanged({required String smsCode}) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void reset() {
    emit(
      state.copyWith(
        failureMessageOption: none(),
        verificationIdOption: none(),
        phoneNumber: '',
        smsCode: '',
        isInProgress: false,
        isPhoneNumberInputValidated: false,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();
    return super.close();
  }

  void verifySmsCode() {
    if (state.isInProgress) {
      return;
    }
    state.verificationIdOption.fold(
      () {
        //Verification id does not exist. This should not happen.
      },
      (String verificationId) async {
        emit(state.copyWith(isInProgress: true, failureMessageOption: none()));

        final Either<AuthFailure, Unit> failureOrSuccess = await _authService.verifySmsCode(
          smsCode: state.smsCode,
          verificationId: verificationId,
        );

        failureOrSuccess.fold(
          (AuthFailure failure) {
            emit(state.copyWith(failureMessageOption: some(failure), isInProgress: false));
          },
          (Unit _) {
            emit(state.copyWith(isInProgress: false));
          },
        );
      },
    );
  }

  void signInWithPhoneNumber() {
    if (state.isInProgress) {
      return;
    }

    emit(state.copyWith(isInProgress: true, failureMessageOption: none()));

    _phoneNumberSignInSubscription?.cancel();

    _phoneNumberSignInSubscription = _authService
        .signInWithPhoneNumber(
          phoneNumber: state.phoneNumber,
          timeout: verificationCodeTimeout,
          resendToken: state.phoneNumber != state.phoneNumberAndResendTokenPair.$1
              ? null
              : state.phoneNumberAndResendTokenPair.$2,
        )
        .listen(
          (Either<AuthFailure, (String, int?)> failureOrVerificationId) => failureOrVerificationId.fold(
            (AuthFailure failure) {
              emit(state.copyWith(failureMessageOption: some(failure), isInProgress: false));
            },
            ((String, int?) verificationIdResendTokenPair) {
              emit(
                state.copyWith(
                  verificationIdOption: some(verificationIdResendTokenPair.$1),
                  isInProgress: false,
                  phoneNumberAndResendTokenPair: (state.phoneNumber, verificationIdResendTokenPair.$2),
                ),
              );
            },
          ),
        );
  }
}
