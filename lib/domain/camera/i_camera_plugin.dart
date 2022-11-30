import 'package:flutter_production_app/application/camera/cubit/camera_cubit.dart';

abstract class ICameraPlugin {
  Stream<CameraState> cameraInitialized();
  Stream<CameraState> cameraCaptured();
  Stream<CameraState> cameraStopped();
}
