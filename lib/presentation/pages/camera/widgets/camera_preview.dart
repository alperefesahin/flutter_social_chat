import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

/// Display the preview from the camera (or a message if the preview is not available).
Widget cameraPreview(
  CameraController? controller,
) {
  if (controller == null || !controller.value.isInitialized) {
    return const Center(
      child: Text(
        'Give the related permission!',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  } else {
    return CameraPreview(controller);
  }
}
