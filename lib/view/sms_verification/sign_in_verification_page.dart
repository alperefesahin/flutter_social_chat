import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_state.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_app_bar.dart';
import 'package:flutter_social_chat/view/sms_verification/widgets/verification_page_body.dart';
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

    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn,
      listener: (context, state) {
        final isLoggedIn = state.isLoggedIn;
        final isOnboardingCompleted = state.authUser.isOnboardingCompleted;

        if (isLoggedIn && isOnboardingCompleted) {
          context.go(context.namedLocation('channels_page'));
        } else if (isLoggedIn && !isOnboardingCompleted) {
          context.go(context.namedLocation('onboarding_page'));
        }
      },
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (context, result) {},
        child: Scaffold(
          backgroundColor: white,
          appBar: CustomAppBar(
            leading: IconButton(
              onPressed: () {
                context.read<PhoneNumberSignInCubit>().reset();
                context.pop();
              },
              icon: const Icon(CupertinoIcons.back, color: black),
            ),
            backgroundColor: white,
            title: AppLocalizations.of(context)?.verification ?? '',
          ),
          body: SmsVerificationViewBody(
            phoneNumber: phoneNumber,
          ),
        ),
      ),
    );
  }
}
