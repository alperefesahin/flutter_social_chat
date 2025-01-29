import 'package:flutter/material.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

class TitleTextPair extends StatelessWidget {
  const TitleTextPair({super.key, required this.title, required this.text});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: title, fontWeight: FontWeight.w600),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: CustomText(text: text, fontSize: 16),
        ),
      ],
    );
  }
}
