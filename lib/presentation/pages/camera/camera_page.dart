import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_direction_row.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_preview.dart';
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

  Future<void> initalizeCamera() async {
    _cameraCubit = getIt<CameraCubit>();
    final cameras = await _cameraCubit.getCamerasOfTheDevice();
    //!
/*     final controller = CameraController(cameras[0], ResolutionPreset.high); */
    await controller!.initialize();
  }

  @override
  void initState() {
    initalizeCamera();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {},
    );
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
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
              final cameras = state.cameras;

              if (state.isInProgress) {
                return Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
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
                            cameraPreview(controller),
                            CaptureButton(controller: controller),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            cameraDirectionRow(controller, cameras, onNewCameraSelected),
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
      if (cameraController.value.hasError) {
        print('Camera error ${cameraController.value.errorDescription}');
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
