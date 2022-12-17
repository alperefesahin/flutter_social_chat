import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
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
  final Future<void> Function() onNewCameraSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraCubit, CameraState>(
      builder: (context, state) {
        final isPathOfTheTakenPhotoEmpty = state.pathOfTheTakenPhoto == "";

        if (isPathOfTheTakenPhotoEmpty) {
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
        } else {
          return Scaffold(
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.send)),
            ),
            body: Stack(
              children: [
                Image(
                  image: AssetImage(state.pathOfTheTakenPhoto),
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 50,
                  left: 15,
                  child: IconButton(
                    onPressed: () {
                      context.read<CameraCubit>().refresh();
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: whiteColor,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
