import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/widgets/resend_code_button.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/widgets/verification_confirm_button.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/widgets/verification_pin_field.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/widgets/wave_animation.dart';

class VerificationPageBody extends StatelessWidget {
  const VerificationPageBody({Key? key, required this.phoneNumber}) : super(key: key);

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return Stack(
          children: [
            const CustomWaveAnimation(),
            state.isInProgress
                ? const CustomProgressIndicator(
                    progressIndicatorColor: whiteColor,
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 20,
                                    top: 5,
                                  ),
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 25,
                                    color: whiteColor,
                                  ),
                                ),
                                CustomText(
                                  text: confirmationText,
                                  minFontSize: 30,
                                  maxFontSize: 35,
                                  textPadding: EdgeInsets.only(),
                                  textStyle: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              top: 25,
                              right: 25,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.vibration,
                                  size: 50,
                                  color: whiteColor,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: confirmationInfoText,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: whiteColor,
                                              fontWeight: FontWeight.w500,
                                              height: 1.75,
                                            ),
                                          ),
                                          TextSpan(
                                            text: phoneNumber,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              color: whiteColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const VerificationPinField(),
                          const ResendCodeButton(),
                          VerificationConfirmButton(state: state)
                        ],
                      ),
                    ),
                  )
          ],
        );
      },
    );
  }
}
