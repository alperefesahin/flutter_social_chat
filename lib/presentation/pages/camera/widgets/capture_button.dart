import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';

class CaptureButton extends StatelessWidget {
  const CaptureButton({super.key, this.controller});
  final CameraController? controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.bottomCenter,
      icon: const Icon(Icons.camera_alt),
      color: Colors.blue,
      onPressed: () {
        if (controller != null && controller!.value.isInitialized) {
          context.read<CameraCubit>().takePicture(controller);
        }
      },
    );
  }
}
