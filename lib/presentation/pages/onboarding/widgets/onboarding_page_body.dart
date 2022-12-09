import 'package:flutter/cupertino.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/animated_text.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/onboarding_image.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/profile_image.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/submit_button.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/widgets/username_form_field.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class OnboardingPageBody extends StatelessWidget {
  OnboardingPageBody({super.key, required this.authState});
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  final AuthState authState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OnboardingImage(),
        ProfileImage(authState: authState),
        const SizedBox(height: 10),
        const UsernameFormField(),
        SubmitButton(authState: authState, btnController: _btnController),
        const AnimatedText(),
      ],
    );
  }
}
