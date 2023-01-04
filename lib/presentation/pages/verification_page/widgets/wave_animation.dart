// ignore_for_file: use_named_constants

import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class CustomWaveAnimation extends StatelessWidget {
  const CustomWaveAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 0.9,
      duration: const Duration(seconds: 3),
      child: WaveWidget(
        config: CustomConfig(
          gradients: const [
            [customIndigoColor, customIndigoColor]
          ],
          durations: [25000],
          heightPercentages: [(0.005)],
          blur: const MaskFilter.blur(BlurStyle.solid, 12),
        ),
        size: const Size(double.infinity, double.infinity),
      ),
    );
  }
}
