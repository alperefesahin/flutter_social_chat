import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/models/orientations.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> with TickerProviderStateMixin {
  final _switchFlash = ValueNotifier(CameraFlashes.AUTO);
  final _sensor = ValueNotifier(Sensors.BACK);
  final _captureMode = ValueNotifier(CaptureModes.PHOTO);
  final _photoSize = ValueNotifier(const Size(1920, 1080));
  final _zoom = ValueNotifier(0.0);

  PictureController _pictureController = new PictureController();
  VideoController _videoController = new VideoController();
  @override
  Widget build(BuildContext context) {
    return CameraAwesome(
      onPermissionsResult: (bool? result) => true,
      selectDefaultSize: (availableSizes) => _photoSize.value,
      onCameraStarted: () {},
      onOrientationChanged: (CameraOrientations? newOrientation) {},
      zoom: _zoom,
      sensor: _sensor,
      photoSize: _photoSize,
      switchFlashMode: _switchFlash,
      captureMode: _captureMode,
      fitted: true,
    );
  }
}
