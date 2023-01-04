import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth/auth_management/auth_management_cubit.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_social_chat/presentation/pages/onboarding/widgets/onboarding_page_body.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    if (mounted) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          final bool isOnboardingCompleted =
              context.read<AuthCubit>().state.authUser.isOnboardingCompleted;

          if (isOnboardingCompleted) {
            context.go(context.namedLocation("channels_page"));
          }
        },
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.authUser.isOnboardingCompleted) {
          context.go(context.namedLocation("channels_page"));
        }
      },
      child: BlocBuilder<AuthManagementCubit, AuthManagementState>(
        builder: (context, state) {
          if (state.isInProgress) {
            return const Scaffold(
              body: CustomProgressIndicator(
                progressIndicatorColor: blackColor,
              ),
            );
          } else {
            return WillPopScope(
              onWillPop: () => Future<bool>.value(false),
              child: Scaffold(
                body: OnboardingPageBody(selectedImagePath: state.selectedImagePath),
              ),
            );
          }
        },
      ),
    );
  }
}
