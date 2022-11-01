import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/constants/texts.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';

class VerificationConfirmButton extends StatelessWidget {
  const VerificationConfirmButton({
    Key? key,
    required this.state,
  }) : super(key: key);
  final PhoneNumberSignInState state;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (state.smsCode.isNotEmpty) {
          context.read<PhoneNumberSignInCubit>().verifySmsCode();
          context.router.navigate(const LandingRoute());
        }
      },
      splashColor: transparentColor,
      highlightColor: transparentColor,
      child: Container(
        margin: const EdgeInsets.only(top: 75),
        width: MediaQuery.of(context).size.width / 1.15,
        height: MediaQuery.of(context).size.height / 13,
        decoration: const BoxDecoration(
          color: customIndigoBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              text: confirmText,
              minFontSize: 25,
              maxFontSize: 30,
              textPadding: EdgeInsets.only(left: 20),
              textStyle: TextStyle(
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
