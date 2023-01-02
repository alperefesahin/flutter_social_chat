import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';

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
          minFontSize: 17,
          maxFontSize: 23,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          textPadding: EdgeInsets.zero,
        ),
        CustomText(
          text: text,
          minFontSize: 15,
          maxFontSize: 20,
          textStyle: const TextStyle(fontWeight: FontWeight.w500),
          textPadding: const EdgeInsets.only(top: 6),
        )
      ],
    );
  }
}
