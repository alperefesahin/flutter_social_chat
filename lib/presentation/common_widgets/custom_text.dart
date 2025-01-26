import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.textPadding, this.textStyle});

  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry textPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textPadding,
      child: Text(text, style: textStyle, textAlign: TextAlign.center),
    );
  }
}
