import 'package:flutter_production_app/domain/camera/i_camera_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@LazySingleton(as: ICameraHandler)
class CameraHandler implements ICameraHandler {
  @override
  Stream<PermissionStatus> get cameraStateChanges {
    const camera = Permission.camera;

    return camera.status.asStream().map(
      (permissionStatus) {
        if (permissionStatus.isGranted) {
          return PermissionStatus.granted;
        } else if (permissionStatus.isLimited) {
          return PermissionStatus.limited;
        } else if (permissionStatus.isDenied) {
          return PermissionStatus.denied;
        } else if (permissionStatus.isRestricted) {
          return PermissionStatus.restricted;
        } else {
          return PermissionStatus.permanentlyDenied;
        }
      },
    );
  }

  @override
  Future<PermissionStatus> requestPermission() async {
    const camera = Permission.camera;

    final permissionStatus = await camera.request();

    return permissionStatus;
  }

  @override
  Future<void> openAppSettingsForTheCameraPermission() async {
    await openAppSettings();
  }
}
