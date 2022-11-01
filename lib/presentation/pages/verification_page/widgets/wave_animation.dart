import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class CustomWaveAnimation extends StatelessWidget {
  const CustomWaveAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: (0.9),
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
        waveAmplitude: 20,
        size: const Size(
          double.infinity,
          double.infinity,
        ),
      ),
    );
  }
}
