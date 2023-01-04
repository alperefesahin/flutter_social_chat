import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/camera/camera_cubit.dart';
import 'package:flutter_social_chat/presentation/pages/camera/widgets/camera_output_widget.dart';
import 'package:flutter_social_chat/presentation/pages/camera/widgets/camera_preview_widget.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CameraView extends StatelessWidget {
  const CameraView({
    super.key,
    required this.controller,
    required this.cameras,
    required this.onNewCameraSelected,
    required this.userListController,
  });

  final CameraController controller;
  final List<CameraDescription> cameras;
  final Future<void> Function() onNewCameraSelected;
  final StreamUserListController userListController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraCubit, CameraState>(
      builder: (context, state) {
        final isPathOfTheTakenPhotoEmpty = state.pathOfTheTakenPhoto == "";

        if (isPathOfTheTakenPhotoEmpty) {
          return CameraPreviewWidget(
            controller: controller,
            cameras: cameras,
            onNewCameraSelected: onNewCameraSelected,
          );
        } else {
          return CameraOutputWidget(
            userListController: userListController,
            pathOfTheTakenPhoto: state.pathOfTheTakenPhoto,
            sizeOfTheTakenPhoto: state.sizeOfTheTakenPhoto,
          );
        }
      },
    );
  }
}
