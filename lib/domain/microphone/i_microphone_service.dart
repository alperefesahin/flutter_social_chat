import 'package:permission_handler/permission_handler.dart';

abstract class IMicrophoneService {
  Stream<PermissionStatus> get microphoneStateChanges;

  Future<PermissionStatus> requestPermission();

  Future<void> openAppSettingsForTheMicrophonePermission();
}
