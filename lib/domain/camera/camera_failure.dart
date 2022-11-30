import 'package:freezed_annotation/freezed_annotation.dart';
part 'camera_failure.freezed.dart';

@freezed
class CameraFailure with _$CameraFailure {
  const factory CameraFailure.failedToInitialize() = _FailedToInitialize;
  const factory CameraFailure.errorDuringTheCapture() = _ErrorDuringTheCapture;
}
