import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';
import 'package:flutter_production_app/application/microphone/microphone_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_page_body.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late final CameraCubit _cameraCubit;

  CameraController? controller;
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

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _cameraCubit,
        ),
        BlocProvider(
          create: (context) => getIt<MicrophoneCubit>(),
        ),
      ],
      child: CameraPageBody(
        controller: controller,
        cameras: cameras,
        onNewCameraSelected: onNewCameraSelected,
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

    await cameraController.initialize();
  }
}
