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
import 'package:flutter_social_chat/presentation/pages/sign_in/widgets/sign_in_body.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      serverError: () => AppLocalizations.of(context)?.serverError ?? '',
                      tooManyRequests: () => AppLocalizations.of(context)?.tooManyRequests ?? '',
                      deviceNotSupported: () => AppLocalizations.of(context)?.deviceNotSupported ?? '',
                      smsTimeout: () => AppLocalizations.of(context)?.smsTimeout ?? '',
                      sessionExpired: () => AppLocalizations.of(context)?.sessionExpired ?? '',
                      invalidVerificationCode: () => AppLocalizations.of(context)?.invalidVerificationCode ?? '',
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
                body: CustomProgressIndicator(
                  progressIndicatorColor: blackColor,
                ),
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
                appBarIconColor: whiteColor,
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
