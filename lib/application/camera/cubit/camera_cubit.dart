import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/camera/camera_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'camera_state.dart';
part 'camera_cubit.freezed.dart';

@injectable
class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(CameraState.empty());

  CameraController _cameraController;

  CameraController getController() => _cameraController!;

  Future<CameraController> getCameraController() async {
    final cameras = await availableCameras();
    final camera = cameras.firstWhere((camera) => camera.lensDirection == CameraLensDirection.back);

    return CameraController(camera, ResolutionPreset.high, enableAudio: false);
  }

  Future<void> initializeTheCamera() async {
    try {
      _cameraController = await getCameraController();
      await _cameraController!.initialize();
    } on CameraException catch (error) {
      debugPrint("init error: " + error.toString());

      /* controller?.dispose(); */

    } catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<void> _mapCameraCapturedToState() async {
    final controller = await getCameraController();
    if (state.cameraCaptureFailureOption.isNone()) {
      emit(state.copyWith(cameraCaptureInProgress: true));
      try {
        final takenPhoto = await controller.takePicture();
        emit(state.copyWith(cameraCaptureSuccess: takenPhoto.path));
      } on CameraException catch (error) {
        debugPrint(error.description);
      }
    }
  }
}
