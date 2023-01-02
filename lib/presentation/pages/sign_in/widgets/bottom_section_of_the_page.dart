import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/sign_in/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/sign_in/widgets/phone_number_sign_in_section.dart';
import 'package:go_router/go_router.dart';

class BottomSectionOfThePage extends StatelessWidget {
  const BottomSectionOfThePage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: size.height / 3,
              right: 25,
              left: 25,
              bottom: 25,
            ),
            child: Container(
              constraints: BoxConstraints(
                maxHeight: size.height / 2,
                maxWidth: size.width,
                minHeight: size.height / 2.5,
                minWidth: size.width,
              ),
              child: Card(
                color: whiteColor,
                elevation: 4.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Row(
                        children: const [
                          CustomText(
                            text: signInWithPhoneNumber,
                            minFontSize: 17,
                            maxFontSize: 25,
                            textPadding: EdgeInsets.zero,
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PhoneNumberSignInSection(
                      state: state,
                    ),
                    const CustomText(
                      text: smsInformationMessage,
                      minFontSize: 15,
                      maxFontSize: 20,
                      textPadding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 45,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (state.isPhoneNumberInputValidated) {
                          context.read<PhoneNumberSignInCubit>().signInWithPhoneNumber();

                          context.push(
                            context.namedLocation("sign_in_verification_page"),
                            extra: state,
                          );
                        }
                      },
                      child: Container(
                        constraints: BoxConstraints(
                          minHeight: size.height / 10,
                          minWidth: size.width / 4.7,
                        ),
                        decoration: BoxDecoration(
                          color: customIndigoColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: customIndigoColor.withOpacity(0.8),
                              spreadRadius: 4,
                              blurRadius: 30,
                              // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 35,
                          color: whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
