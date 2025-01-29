import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

class VerificationConfirmButton extends StatelessWidget {
  const VerificationConfirmButton({
    super.key,
    required this.state,
  });
  final PhoneNumberSignInState state;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (state.smsCode.isNotEmpty) {
          context.read<PhoneNumberSignInCubit>().verifySmsCode();
        }
      },
      splashColor: transparent,
      highlightColor: transparent,
      child: Container(
        margin: const EdgeInsets.only(top: 75),
        width: MediaQuery.of(context).size.width / 1.15,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
          color: black.withValues(alpha: 0.25),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                text: AppLocalizations.of(context)?.confirm ?? '',
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: 26,
              ),
            ),
            Container(
              width: 75,
              height: MediaQuery.of(context).size.height / 13,
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
