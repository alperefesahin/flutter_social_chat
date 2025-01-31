import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_state.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_app_bar.dart';
import 'package:flutter_social_chat/core/design_system/popscope_scaffold.dart';
import 'package:flutter_social_chat/view/sms_verification/widgets/sms_verification_view_body.dart';
import 'package:go_router/go_router.dart';

class SmsVerificationView extends StatelessWidget {
  const SmsVerificationView({super.key, required this.state});

  final PhoneNumberSignInState state;

  @override
  Widget build(BuildContext context) {
    final String phoneNumber = state.phoneNumber;
    final String appBarTitle = AppLocalizations.of(context)?.verification ?? '';

    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn,
      listener: (context, state) {
        final isLoggedIn = state.isLoggedIn;
        final isOnboardingCompleted = state.authUser.isOnboardingCompleted;

        if (isLoggedIn && isOnboardingCompleted) {
          context.go('/channels_page');
        } else if (isLoggedIn && !isOnboardingCompleted) {
          context.go('/onboarding_page');
        }
      },
      child: PopScopeScaffold(
        backgroundColor: white,
        body: SmsVerificationViewBody(phoneNumber: phoneNumber),
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () {
              context.read<PhoneNumberSignInCubit>().reset();

              context.pop();
            },
            icon: const Icon(CupertinoIcons.back, color: black),
          ),
          backgroundColor: white,
          title: appBarTitle,
        ),
      ),
    );
  }
}
