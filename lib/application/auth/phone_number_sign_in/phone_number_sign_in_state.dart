part of 'phone_number_sign_in_cubit.dart';

@freezed
class PhoneNumberSignInState with _$PhoneNumberSignInState {
  const factory PhoneNumberSignInState({
    required String phoneNumber,
    required String smsCode,
    required Option<String> verificationIdOption,
    required Option<AuthFailure> failureMessageOption,
    required bool isInProgress,
    required bool isPhoneNumberInputValidated,
    required Tuple2<String, int?> phoneNumberAndResendTokenPair,
  }) = _PhoneNumberSignInState;
  const PhoneNumberSignInState._();

  factory PhoneNumberSignInState.empty() => PhoneNumberSignInState(
        phoneNumber: "",
        smsCode: "",
        isInProgress: false,
        isPhoneNumberInputValidated: false,
        failureMessageOption: none(),
        verificationIdOption: none(),
        phoneNumberAndResendTokenPair: tuple2("", null),
      );
}
