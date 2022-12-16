import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_direction_row.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/capture_button.dart';

class CameraView extends StatelessWidget {
  const CameraView({
    super.key,
    required this.controller,
    required this.cameras,
    required this.onNewCameraSelected,
  });

  final CameraController controller;
  final List<CameraDescription> cameras;
  final Future<void> Function(CameraDescription cameraDescription) onNewCameraSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: [
                CameraPreview(controller),
                CaptureButton(controller: controller),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                cameraDirectionRow(
                  controller,
                  cameras,
                  onNewCameraSelected,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
