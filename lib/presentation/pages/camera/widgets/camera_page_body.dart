import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';
import 'package:flutter_production_app/application/microphone/microphone_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_view.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/no_permission_widget.dart';

class CameraPageBody extends StatelessWidget {
  const CameraPageBody({
    super.key,
    required this.controller,
    required this.cameras,
    required this.onNewCameraSelected,
  });

  final CameraController? controller;
  final List<CameraDescription>? cameras;
  final Future<void> Function() onNewCameraSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MicrophoneCubit, MicrophoneState>(
      builder: (context, microphoneState) {
        return BlocBuilder<CameraCubit, CameraState>(
          builder: (context, cameraState) {
            final isCameraPermissionGranted = cameraState.isCameraPermissionGranted;
            final isMicrophonePermissionGranted = microphoneState.isMicrophonePermissionGranted;

            if (!isCameraPermissionGranted || !isMicrophonePermissionGranted) {
              return const NoPermissionWidget();
            }
            if (cameras == null || controller == null) {
              return const Scaffold(
                body: CustomProgressIndicator(progressIndicatorColor: blackColor),
              );
            } else {
              return CameraView(
                controller: controller!,
                cameras: cameras!,
                onNewCameraSelected: onNewCameraSelected,
              );
            }
          },
        );
      },
    );
  }
}
