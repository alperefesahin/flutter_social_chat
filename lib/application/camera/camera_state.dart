part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    required List<CameraDescription> cameras,
    required String pathOfTheTakenPhoto,
    required bool isInProgress,
    required bool isCameraPermissionGranted,
  }) = _CameraState;

  factory CameraState.empty() => const CameraState(
        cameras: [],
        pathOfTheTakenPhoto: "",
        isInProgress: false,
        isCameraPermissionGranted: false,
      );
}
