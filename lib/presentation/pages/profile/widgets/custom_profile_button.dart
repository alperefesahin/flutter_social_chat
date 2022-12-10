import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  final Function() onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 25),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: size.width,
          height: size.height / 16,
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius:
                BorderRadius.horizontal(right: Radius.circular(10), left: Radius.circular(12)),
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 20),
              CustomText(
                text: text,
                minFontSize: 18,
                maxFontSize: 20,
                textPadding: EdgeInsets.zero,
                textStyle: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
