import 'package:permission_handler/permission_handler.dart';

abstract class ICameraService {
  Stream<PermissionStatus> get cameraStateChanges;

  Future<PermissionStatus> requestPermission();

  Future<void> openAppSettingsForTheCameraPermission();
}
