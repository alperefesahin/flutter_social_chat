part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    required bool cameraCaptureInProgress,
    required Option<CameraFailure> cameraInitFailureOption,
    required Option<CameraFailure> cameraCaptureFailureOption,
    required String cameraCaptureSuccess,
  }) = _CameraState;

  factory CameraState.empty() => CameraState(
        cameraCaptureInProgress: false,
        cameraInitFailureOption: none(),
        cameraCaptureFailureOption: none(),
        cameraCaptureSuccess: "",
      );
}
