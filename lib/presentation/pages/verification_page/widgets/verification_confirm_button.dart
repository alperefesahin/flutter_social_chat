import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text.dart';

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
      splashColor: transparentColor,
      highlightColor: transparentColor,
      child: Container(
        margin: const EdgeInsets.only(top: 75),
        width: MediaQuery.of(context).size.width / 1.15,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
          color: blackColor.withOpacity(0.25),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: AppLocalizations.of(context).confirm,
              minFontSize: 25,
              maxFontSize: 30,
              textPadding: const EdgeInsets.only(left: 20),
              textStyle: const TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: 75,
              height: MediaQuery.of(context).size.height / 13,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
