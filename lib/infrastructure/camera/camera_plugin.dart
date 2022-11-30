import 'package:flutter_production_app/application/camera/cubit/camera_cubit.dart';
import 'package:flutter_production_app/domain/camera/i_camera_plugin.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICameraPlugin)
class CameraPlugin implements ICameraPlugin {
  @override
  Stream<CameraState> cameraCaptured() {
    // TODO: implement cameraCaptured
    throw UnimplementedError();
  }

  @override
  Stream<CameraState> cameraInitialized() {
    // TODO: implement cameraInitialized
    throw UnimplementedError();
  }

  @override
  Stream<CameraState> cameraStopped() {
    // TODO: implement cameraStopped
    throw UnimplementedError();
  }
}
