import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/camera/camera_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';

class CaptureButton extends StatelessWidget {
  const CaptureButton({super.key, this.controller});
  final CameraController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: IconButton(
        alignment: Alignment.bottomCenter,
        icon: const Icon(Icons.camera, size: 50, color: whiteColor),
        color: Colors.blue,
        onPressed: () {
          final cameraLensDirection = controller?.description.lensDirection;
          final filePath = takePicture(controller, context);

          context
              .read<CameraCubit>()
              .takePicture(xfile: filePath, cameraLensDirection: cameraLensDirection);
        },
      ),
    );
  }

  Future<XFile?> takePicture(CameraController? controller, BuildContext context) async {
    if (controller == null || !controller.value.isInitialized) {
      return null;
    }
    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    final XFile file = await controller.takePicture();
    return file;
  }
}
