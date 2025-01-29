import 'package:flutter/material.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.color = black,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 20,
    required this.text,
  });

  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.robotoCondensed(color: color, fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
