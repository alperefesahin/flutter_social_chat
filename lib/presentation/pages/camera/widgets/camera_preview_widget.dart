import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/pages/camera/widgets/capture_button.dart';

class CameraPreviewWidget extends StatelessWidget {
  const CameraPreviewWidget({
    super.key,
    required this.controller,
    required this.cameras,
    required this.onNewCameraSelected,
  });

  final CameraController controller;
  final List<CameraDescription> cameras;
  final Future<void> Function() onNewCameraSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              fit: StackFit.expand,
              children: [
                CameraPreview(controller),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CaptureButton(controller: controller),
                      IconButton(
                        onPressed: onNewCameraSelected,
                        icon: const Icon(CupertinoIcons.arrow_2_circlepath),
                        color: whiteColor,
                        iconSize: 32,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
