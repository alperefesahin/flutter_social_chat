import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/widgets/verification_page_body.dart';
import 'package:go_router/go_router.dart';

class SignInVerificationPage extends StatelessWidget {
  const SignInVerificationPage({
    super.key,
    required this.state,
  });

  final PhoneNumberSignInState state;

  @override
  Widget build(BuildContext context) {
    final phoneNumber = state.phoneNumber;

    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn,
          listener: (context, state) {
            if (state.isLoggedIn) {
              context.go(context.namedLocation("channels_page"));
            }
          },
        ),
        BlocListener<PhoneNumberSignInCubit, PhoneNumberSignInState>(
          listenWhen: (p, c) => p.failureMessageOption != c.failureMessageOption,
          listener: (context, state) {
            if (state.failureMessageOption.isSome()) {
              context.pop();
            }
          },
        ),
      ],
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: whiteColor,
          appBar: CustomAppBar(
            leadingOnPressed: () {
              context.read<PhoneNumberSignInCubit>().reset();
              //Todo: Check regularly known issue to update the codes (popUntil)
              // official popUntil issue: https://github.com/flutter/flutter/issues/99112
              // waiting for the popUntil method.
              context.pop();
            },
            appBarBackgroundColor: whiteColor,
            appBarTitle: verificationText,
            appBarAction: Icons.lock,
            appBarLeading: Icons.arrow_back_ios,
            appBarTitleTextStyle: const TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w500,
            ),
            appBarIconColor: blackColor,
          ),
          body: VerificationPageBody(
            phoneNumber: phoneNumber,
          ),
        ),
      ),
    );
  }
}
