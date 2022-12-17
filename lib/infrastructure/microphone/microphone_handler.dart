import 'package:flutter_production_app/domain/microphone/i_microphone_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@LazySingleton(as: IMicrophoneHandler)
class MicrophoneHandler implements IMicrophoneHandler {
  @override
  Stream<PermissionStatus> get microphoneStateChanges {
    const microphone = Permission.microphone;

    return microphone.status.asStream().map(
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
    const microphone = Permission.microphone;

    final permissionStatus = await microphone.request();

    return permissionStatus;
  }

  @override
  Future<void> openAppSettingsForTheMicrophonePermission() async {
    await openAppSettings();
  }
}