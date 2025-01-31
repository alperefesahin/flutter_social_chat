import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/core/constants/enums/router_enum.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';
import 'package:flutter_social_chat/view/sign_in/widgets/phone_number_sign_in_section.dart';
import 'package:flutter_social_chat/presentation/routes/codec.dart';
import 'package:go_router/go_router.dart';

class PhoneNumberInputCard extends StatelessWidget {
  const PhoneNumberInputCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        final Size size = MediaQuery.of(context).size;

        final String signInWithPhoneNumber = AppLocalizations.of(context)?.signInWithPhoneNumber ?? '';
        final String smsInformationMessage = AppLocalizations.of(context)?.smsInformationMessage ?? '';

        return SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: EdgeInsets.only(top: size.height / 3, right: 24, left: 24, bottom: 24),
            child: Card(
              color: white,
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28, left: 28),
                    child: CustomText(text: signInWithPhoneNumber, fontWeight: FontWeight.w600),
                  ),
                  PhoneNumberInputField(state: state),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                    child: CustomText(text: smsInformationMessage, fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    highlightColor: transparent,
                    splashColor: transparent,
                    hoverColor: transparent,
                    onTap: () {
                      if (state.isPhoneNumberInputValidated) {
                        context.read<PhoneNumberSignInCubit>().signInWithPhoneNumber();

                        context.push(
                          RouterEnum.signInVerificationView.routeName,
                          extra: PhoneNumberSignInStateCodec.encode({
                            'phoneNumber': state.phoneNumber,
                            'smsCode': state.smsCode,
                            'verificationId': state.verificationIdOption.toNullable(),
                            'isInProgress': state.isInProgress,
                            'isPhoneNumberInputValidated': state.isPhoneNumberInputValidated,
                            'phoneNumberPair': state.phoneNumberAndResendTokenPair.$1,
                            'resendToken': state.phoneNumberAndResendTokenPair.$2,
                          }),
                        );
                      }
                    },
                    child: Center(
                      child: Container(
                        height: 75,
                        width: 75,
                        margin: const EdgeInsets.only(top: 40, bottom: 60),
                        decoration: BoxDecoration(
                          color: customIndigoColor,
                          borderRadius: const BorderRadius.all(Radius.circular(36)),
                          boxShadow: [
                            BoxShadow(blurRadius: 50, color: customIndigoColor.withValues(alpha: 0.75)),
                          ],
                        ),
                        child: const Icon(Icons.arrow_forward, size: 28, color: white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
