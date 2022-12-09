import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SvgPicture.asset(
      "assets/images/chat.svg",
      width: size.width,
      height: size.height / 4,
    );
  }
}
