import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/camera/camera_cubit.dart';
import 'package:flutter_social_chat/application/microphone/microphone_cubit.dart';
import 'package:flutter_social_chat/injection.dart';
import 'package:flutter_social_chat/presentation/pages/camera/widgets/camera_page_body.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

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
  bool isInProgress = false;

  late final StreamUserListController userListController = StreamUserListController(
    client: StreamChat.of(context).client,
    limit: 25,
    filter: Filter.and(
      [Filter.notEqual('id', StreamChat.of(context).currentUser!.id)],
    ),
    sort: [
      const SortOption('name', direction: 1),
    ],
  );

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
      onNewCameraSelected();
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
        onNewCameraSelected: () async => onNewCameraSelected(),
        userListController: userListController,
      ),
    );
  }

  Future<void> onNewCameraSelected() async {
    if (isInProgress) {
      return;
    }

    isInProgress = true;
    controller!.value.copyWith(isPreviewPaused: true);

    final CameraController? oldController = controller;
    final oldControllersLens = oldController?.description.lensDirection;

    controller = null;
    await oldController?.dispose();

    final CameraController cameraController = CameraController(
      oldControllersLens == CameraLensDirection.back ? cameras![1] : cameras![0],
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
    isInProgress = false;
  }
}
