import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

class VerificationConfirmButton extends StatelessWidget {
  const VerificationConfirmButton({super.key, required this.state});

  final PhoneNumberSignInState state;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String confirmText = AppLocalizations.of(context)?.confirm ?? '';

    return InkWell(
      highlightColor: transparent,
      splashColor: transparent,
      hoverColor: transparent,
      onTap: () {
        if (state.smsCode.isNotEmpty) {
          context.read<PhoneNumberSignInCubit>().verifySmsCode();
        }
      },
      child: Container(
        margin: const EdgeInsets.only(top: 76, left: 24, right: 24),
        width: size.width,
        height: size.height / 12,
        decoration: BoxDecoration(
          color: black.withValues(alpha: 0.25),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                text: confirmText,
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: 26,
              ),
            ),
            Container(
              width: 75,
              height: MediaQuery.of(context).size.height / 12,
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
              ),
              child: const Icon(Icons.arrow_forward, size: 36),
            ),
          ],
        ),
      ),
    );
  }
}
