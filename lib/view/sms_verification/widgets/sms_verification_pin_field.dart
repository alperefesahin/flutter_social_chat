import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SmsVerificationPinField extends StatelessWidget {
  const SmsVerificationPinField({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width,
            height: size.height / 9,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              border: Border.all(color: white, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
          PinCodeTextField(
            backgroundColor: transparent,
            mainAxisAlignment: MainAxisAlignment.center,
            appContext: context,
            length: 6,
            onChanged: (String smsCode) {
              context.read<PhoneNumberSignInCubit>().smsCodeChanged(smsCode: smsCode);
            },
            textStyle: const TextStyle(color: white),
            keyboardType: TextInputType.phone,
            hintCharacter: '-',
            hintStyle: const TextStyle(color: white),
            pinTheme: PinTheme(
              fieldOuterPadding: const EdgeInsets.only(left: 4, right: 4, top: 8),
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(4),
              fieldHeight: 60,
              fieldWidth: 48,
              inactiveColor: black.withValues(alpha: 0.2),
              activeColor: black.withValues(alpha: 0.2),
              selectedColor: black.withValues(alpha: 0.2),
            ),
          ),
        ],
      ),
    );
  }
}
