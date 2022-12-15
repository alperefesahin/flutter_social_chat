// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/camera/i_camera_handler.dart';
import 'package:flutter_production_app/infrastructure/camera/camera_handler.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'camera_state.dart';
part 'camera_cubit.freezed.dart';

@lazySingleton
class CameraCubit extends Cubit<CameraState> {
  late final ICameraHandler _cameraHandler;
  late StreamSubscription<PermissionStatus>? _cameraPermissionSubscription;

  CameraCubit() : super(CameraState.empty()) {
    _cameraHandler = getIt<CameraHandler>();

    _cameraPermissionSubscription =
        _cameraHandler.cameraStateChanges.listen(_listenCameraStateChangesStream);
  }

  Future<void> _listenCameraStateChangesStream(PermissionStatus cameraPermission) async {
    if (cameraPermission.isGranted || cameraPermission.isLimited) {
      emit(state.copyWith(isCameraPermissionGranted: true));
    } else if (cameraPermission.isDenied || cameraPermission.isRestricted) {
      final requestPermission = await _cameraHandler.requestPermission();

      if (requestPermission.isGranted || requestPermission.isLimited) {
        emit(state.copyWith(isCameraPermissionGranted: true));
      } else {
        emit(state.copyWith(isCameraPermissionGranted: false));
      }
    } else {
      _cameraHandler.openAppSettingsForTheCameraPermission();
    }
  }

  @override
  Future<void> close() async {
    await _cameraPermissionSubscription?.cancel();
    super.close();
  }

  Future<List<CameraDescription>> getCamerasOfTheDevice() async {
    emit(state.copyWith(isInProgress: true));

    final availableCamerasOfTheDevice = await availableCameras();

    emit(state.copyWith(isInProgress: false));

    return availableCamerasOfTheDevice;
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
