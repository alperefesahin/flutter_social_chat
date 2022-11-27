import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
    required this.progressIndicatorColor,
  });

  final Color progressIndicatorColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: JumpingDotsProgressIndicator(
        fontSize: 50,
        color: progressIndicatorColor,
      ),
    );
  }
}
