import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/camera/widgets/camera_lens_icon.dart';

Widget cameraDirectionRow(
  CameraController? controller,
  List<CameraDescription> cameras,
  Future<void> Function(CameraDescription cameraDescription) onNewCameraSelected,
) {
  final List<Widget> toggles = [];

  void onChanged(CameraDescription? description) {
    if (description == null) {
      return;
    }

    onNewCameraSelected(description);
  }

  if (cameras.isEmpty) {
    return Container();
  } else {
    for (final cameraDescription in cameras) {
      toggles.add(
        SizedBox(
          width: 90.0,
          child: RadioListTile(
            title: CameraLensIcon(lensDirection: cameraDescription.lensDirection),
            groupValue: controller?.description,
            value: cameraDescription,
            onChanged: onChanged,
          ),
        ),
      );
    }
  }
  return Row(children: toggles);
}
