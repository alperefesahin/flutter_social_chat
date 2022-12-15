import 'package:permission_handler/permission_handler.dart';

abstract class ICameraHandler {
  Stream<PermissionStatus> get cameraStateChanges;

  Future<PermissionStatus> requestPermission();

  Future<void> openAppSettingsForTheCameraPermission();
}
