import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.minFontSize,
    required this.maxFontSize,
    required this.textPadding,
    this.textStyle,
  }) : super(key: key);

  final String text;
  final double minFontSize;
  final double maxFontSize;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry textPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textPadding,
      child: AutoSizeText(
        text,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
