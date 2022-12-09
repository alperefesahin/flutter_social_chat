import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/constants/texts.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(40),
      width: size.width,
      height: size.height / 4.5,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText(
            animatedText1,
            textStyle: const TextStyle(
              fontFamily: 'Agne',
              fontSize: 22,
            ),
          ),
          TypewriterAnimatedText(
            animatedText2,
            textStyle: const TextStyle(
              fontFamily: 'Agne',
              fontSize: 22,
            ),
          ),
          TypewriterAnimatedText(
            animatedText3,
            textStyle: const TextStyle(
              fontFamily: 'Agne',
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
