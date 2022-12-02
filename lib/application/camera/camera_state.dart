part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    required List<CameraDescription> cameras,
    required String pathOfTheTakenPhoto,
  }) = _CameraState;

  factory CameraState.empty() => const CameraState(
        cameras: [],
        pathOfTheTakenPhoto: "",
      );
}
