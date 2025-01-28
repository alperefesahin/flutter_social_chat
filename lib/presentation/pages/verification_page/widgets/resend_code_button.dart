import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

class ResendCodeButton extends StatelessWidget {
  const ResendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: InkWell(
        onTap: () {
          context.read<PhoneNumberSignInCubit>().signInWithPhoneNumber();
        },
        splashColor: transparentColor,
        highlightColor: transparentColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CustomText(
                text: AppLocalizations.of(context)?.resendCode ?? '',
                textStyle: const TextStyle(color: whiteColor, fontSize: 16),
                textPadding: EdgeInsets.zero,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
