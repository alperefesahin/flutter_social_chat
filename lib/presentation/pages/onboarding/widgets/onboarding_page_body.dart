import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/onboarding_image.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/profile_image.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/username_form_field.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({super.key, required this.authState});

  final AuthState authState;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/onboarding_top_corner.png",
            width: 120,
          ),
        ),
        const OnboardingImage(),
        ProfileImage(authState: authState),
        const SizedBox(height: 10),
        const UsernameFormField(),
        TextButton(
          onPressed: () {
            context.read<AuthCubit>().createProfile();
          },
          child: const Text(createYourProfile),
        ),
      ],
    );
  }
}
