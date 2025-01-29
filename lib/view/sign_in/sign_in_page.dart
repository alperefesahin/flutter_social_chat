import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_app_bar.dart';
import 'package:flutter_social_chat/core/design_system/custom_progress_indicator.dart';
import 'package:flutter_social_chat/view/sign_in/widgets/sign_in_body.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String serverErrorText = AppLocalizations.of(context)?.serverError ?? '';
    final String tooManyRequestsText = AppLocalizations.of(context)?.tooManyRequests ?? '';
    final String deviceNotSupportedText = AppLocalizations.of(context)?.deviceNotSupported ?? '';
    final String smsTimeoutText = AppLocalizations.of(context)?.smsTimeout ?? '';
    final String sessionExpiredText = AppLocalizations.of(context)?.sessionExpired ?? '';
    final String invalidVerificationCodeText = AppLocalizations.of(context)?.invalidVerificationCode ?? '';

    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        if (state.isInProgress) {
          return BlocListener<PhoneNumberSignInCubit, PhoneNumberSignInState>(
            listenWhen: (p, c) => p.failureMessageOption != c.failureMessageOption,
            listener: (context, state) {
              state.failureMessageOption.fold(
                () {},
                (authFailure) {
                  BotToast.showText(
                    text: authFailure.when(
                      serverError: () => serverErrorText,
                      tooManyRequests: () => tooManyRequestsText,
                      deviceNotSupported: () => deviceNotSupportedText,
                      smsTimeout: () => smsTimeoutText,
                      sessionExpired: () => sessionExpiredText,
                      invalidVerificationCode: () => invalidVerificationCodeText,
                    ),
                  );

                  context.read<PhoneNumberSignInCubit>().reset();
                  context.pop();
                },
              );
            },
            child: PopScope(
              canPop: false,
              onPopInvokedWithResult: (context, result) {},
              child: const Scaffold(
                body: CustomProgressIndicator(progressIndicatorColor: black),
              ),
            ),
          );
        } else {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (context, result) {},
            child: Scaffold(
              appBar: CustomAppBar(
                centerTitle: true,
                appBarIconColor: white,
                appBarBackgroundColor: customIndigoColor,
                appBarTitle: AppLocalizations.of(context)?.signIn ?? '',
                appBarAction: CupertinoIcons.line_horizontal_3_decrease,
                fontSize: 20,
                textPadding: EdgeInsets.zero,
              ),
              body: const SignInPageBody(),
            ),
          );
        }
      },
    );
  }
}
