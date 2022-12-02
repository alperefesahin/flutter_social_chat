import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

/// Returns a suitable camera icon for [direction].

class CameraLensIcon extends StatelessWidget {
  const CameraLensIcon({super.key, required this.lensDirection});
  final CameraLensDirection lensDirection;

  @override
  Widget build(BuildContext context) {
    switch (lensDirection) {
      case CameraLensDirection.back:
        return const Icon(Icons.camera_rear);
      case CameraLensDirection.front:
        return const Icon(Icons.camera_front);
      default:
        throw ArgumentError('Unknown lens direction');
    }
  }
}
