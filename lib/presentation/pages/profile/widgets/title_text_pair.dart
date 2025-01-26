import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text.dart';

class TitleTextPair extends StatelessWidget {
  const TitleTextPair({super.key, required this.title, required this.text});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: title,
          textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          textPadding: EdgeInsets.zero,
        ),
        CustomText(
          text: text,
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          textPadding: const EdgeInsets.only(top: 6),
        ),
      ],
    );
  }
}
