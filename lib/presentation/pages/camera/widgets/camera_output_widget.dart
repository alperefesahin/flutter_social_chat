import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/camera/camera_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';

class CameraOutputWidget extends StatelessWidget {
  const CameraOutputWidget({super.key, required this.pathOfTheTakenPhoto});

  final String pathOfTheTakenPhoto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.send)),
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage(pathOfTheTakenPhoto),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 50,
            left: 15,
            child: IconButton(
              onPressed: () {
                context.read<CameraCubit>().refresh();
              },
              icon: const Icon(
                CupertinoIcons.clear,
                color: whiteColor,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
