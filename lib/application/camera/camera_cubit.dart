// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter_production_app/domain/camera/i_camera_service.dart';
import 'package:flutter_production_app/infrastructure/camera/camera_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'camera_cubit.freezed.dart';
part 'camera_state.dart';

@injectable
class CameraCubit extends Cubit<CameraState> {
  late final ICameraService _cameraHandler;
  late StreamSubscription<PermissionStatus>? _cameraPermissionSubscription;

  CameraCubit() : super(CameraState.empty()) {
    _cameraHandler = CameraHandler();

    _cameraPermissionSubscription =
        _cameraHandler.cameraStateChanges.listen(_listenCameraStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _cameraPermissionSubscription?.cancel();
    super.close();
  }

  void refresh() {
    emit(state.copyWith(pathOfTheTakenPhoto: ""));
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

  Future<List<CameraDescription>> getCamerasOfTheDevice() async {
    emit(state.copyWith(isInProgress: true));

    final availableCamerasOfTheDevice = await availableCameras();

    emit(state.copyWith(isInProgress: false));

    return availableCamerasOfTheDevice;
  }

  Future<void> takePicture({
    required Future<XFile?> xfile,
    required CameraLensDirection? cameraLensDirection,
  }) async {
    String pathOfTheTakenPhoto;
    int sizeOfTheTakenPhoto;

    if (state.isInProgress) {
      return;
    }

    emit(state.copyWith(isInProgress: true));

    final file = await xfile;

    if (file == null) {
      emit(state.copyWith(pathOfTheTakenPhoto: "", isInProgress: false));
    } else {
      sizeOfTheTakenPhoto = await file.length();

      // It's for the mirror image when the cameralens is front.
      if (cameraLensDirection == CameraLensDirection.front) {
        final List<int> imageBytes = await file.readAsBytes();

        final img.Image? originalImage = img.decodeImage(imageBytes);
        final img.Image fixedImage = img.flipHorizontal(originalImage!);

        final File temporaryFile = File(file.path);
        final File fixedFile = await temporaryFile.writeAsBytes(
          img.encodeJpg(fixedImage),
          flush: true,
        );

        pathOfTheTakenPhoto = fixedFile.path;

        emit(
          state.copyWith(
            pathOfTheTakenPhoto: pathOfTheTakenPhoto,
            sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
            isInProgress: false,
          ),
        );
      }
      if (cameraLensDirection == CameraLensDirection.back) {
        pathOfTheTakenPhoto = file.path;
        emit(
          state.copyWith(
            pathOfTheTakenPhoto: pathOfTheTakenPhoto,
            sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
            isInProgress: false,
          ),
        );
      }
    }
  }
}
