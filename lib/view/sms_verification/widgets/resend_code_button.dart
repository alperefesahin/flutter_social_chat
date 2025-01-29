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
    final String resendCodeText = AppLocalizations.of(context)?.resendCode ?? '';

    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24),
      child: InkWell(
        highlightColor: transparent,
        splashColor: transparent,
        hoverColor: transparent,
        onTap: () {
          context.read<PhoneNumberSignInCubit>().signInWithPhoneNumber();
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            spacing: 12,
            children: [
              CustomText(text: resendCodeText, color: white, fontSize: 16, fontWeight: FontWeight.w400),
              const Icon(Icons.arrow_forward_ios, size: 16, color: white),
            ],
          ),
        ),
      ),
    );
  }
}
