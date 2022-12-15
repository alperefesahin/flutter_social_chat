import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/pages/camera/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_direction_row.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/capture_button.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  CameraController? controller;
  late final CameraCubit _cameraCubit;
  List<CameraDescription>? cameras;

  @override
  void initState() {
    _cameraCubit = getIt<CameraCubit>();
    if (mounted) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) async {
          cameras = await _cameraCubit.getCamerasOfTheDevice();

          controller = CameraController(cameras![0], ResolutionPreset.high);

          await controller!.initialize();

          controller!.addListener(() {
            if (mounted) {
              setState(() {});
            }
          });
        },
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  //AppLifecycle
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // App state changed before we got the chance to initialize.
    if (controller == null || !controller!.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      controller!.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(controller!.description);
    }
  }
  //end of the AppLifecycle

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cameraCubit,
      child: Builder(
        builder: (context) {
          return BlocBuilder<CameraCubit, CameraState>(
            builder: (context, state) {
              if (!state.isCameraPermissionGranted) {
                return const Center(
                  child: Text(
                    giveCameraPermission,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                );
              }
              if (cameras == null) {
                return const Scaffold(
                  body: CustomProgressIndicator(progressIndicatorColor: blackColor),
                );
              } else {
                return Scaffold(
                  body: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          fit: StackFit.expand,
                          children: [
                            CameraPreview(controller!),
                            CaptureButton(controller: controller),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            cameraDirectionRow(controller, cameras!, onNewCameraSelected),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    final CameraController? oldController = controller;

    controller = null;
    await oldController?.dispose();

    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.veryHigh,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          print('You have denied camera access.');
          break;
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          print('Please go to Settings app to enable camera access.');
          break;
        case 'CameraAccessRestricted':
          // iOS only
          print('Camera access is restricted.');
          break;
        default:
          break;
      }
    }
  }
}
