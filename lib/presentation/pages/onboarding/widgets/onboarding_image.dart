import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/onboarding_top_corner.png",
          width: 120,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SvgPicture.asset(
            "assets/images/chat.svg",
            width: size.width / 2,
            height: size.height / 4,
          ),
        ),
      ],
    );
  }
}
