import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/camera/camera_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CameraOutputWidget extends StatelessWidget {
  const CameraOutputWidget({
    super.key,
    required this.pathOfTheTakenPhoto,
    required this.userListController,
    required this.sizeOfTheTakenPhoto,
  });

  final String pathOfTheTakenPhoto;
  final int sizeOfTheTakenPhoto;

  final StreamUserListController userListController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton(
          onPressed: () {
            context.go(
              context.namedLocation("capture_and_send_photo_page"),
              extra: {
                "userListController": userListController,
                "pathOfTheTakenPhoto": pathOfTheTakenPhoto,
                "sizeOfTheTakenPhoto": sizeOfTheTakenPhoto,
              },
            );
          },
          child: const Icon(Icons.send),
        ),
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
