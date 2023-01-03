import 'package:flutter/cupertino.dart';
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
      ],
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: whiteColor,
          appBar: CustomAppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                context.read<PhoneNumberSignInCubit>().reset();
                context.pop();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: blackColor,
              ),
            ),
            appBarBackgroundColor: whiteColor,
            appBarTitle: verificationText,
            appBarAction: Icons.lock,
            appBarTitleTextStyle: const TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w500,
            ),
            appBarIconColor: blackColor,
            maxFontSize: 23,
            minFontSize: 19,
            textPadding: EdgeInsets.zero,
          ),
          body: VerificationPageBody(
            phoneNumber: phoneNumber,
          ),
        ),
      ),
    );
  }
}
