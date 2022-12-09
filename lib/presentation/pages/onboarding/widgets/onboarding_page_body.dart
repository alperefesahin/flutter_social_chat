import 'package:flutter/material.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/profile_image.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/username_form_field.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({super.key, required this.authState});

  final AuthState authState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImage(authState: authState),
        const UsernameFormField(),
      ],
    );
  }
}
