// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'camera_state.dart';
part 'camera_cubit.freezed.dart';

@lazySingleton
class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(CameraState.empty());

  Future<void> getCamerasOfTheDevice() async {
    emit(state.copyWith(isInProgress: true));

    final cameras = [...state.cameras];
    final gottenCameras = await availableCameras();
    cameras.addAll(gottenCameras);

    emit(state.copyWith(cameras: cameras,isInProgress: false));
  }

  Future<void> takePicture(CameraController? controller) async {
    if (controller == null || !controller.value.isInitialized) {
      return;
    }
    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return;
    }

    try {
      final XFile file = await controller.takePicture();
      emit(state.copyWith(pathOfTheTakenPhoto: file.path));
    } on CameraException catch (e) {
      print("CAMERA ERROR: " + e.toString());
    }
  }
}
