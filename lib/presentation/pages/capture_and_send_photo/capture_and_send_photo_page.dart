import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_social_chat/presentation/pages/capture_and_send_photo/widgets/capture_and_send_photo_page_body.dart';
import 'package:go_router/go_router.dart';

class CaptureAndSendPhotoPage extends StatelessWidget {
  const CaptureAndSendPhotoPage({
    super.key,
    required this.pathOfTheTakenPhoto,
    required this.sizeOfTheTakenPhoto,
  });

  final String pathOfTheTakenPhoto;
  final int sizeOfTheTakenPhoto;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatManagementCubit, ChatManagementState>(
      listener: (context, state) {
        if (state.isCapturedPhotoSent) {
          context.read<ChatManagementCubit>().reset();
          context.go(context.namedLocation("channels_page"));
        }
      },
      child: WillPopScope(
        onWillPop: () async => Future.value(false),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ChatManagementCubit>().sendCapturedPhotoToSelectedUsers(
                    pathOfTheTakenPhoto: pathOfTheTakenPhoto,
                    sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
                  );
            },
            child: const Icon(Icons.send),
          ),
          appBar: CustomAppBar(
            centerTitle: false,
            appBarTitle: "",
            appBarAction: CupertinoIcons.line_horizontal_3_decrease,
            appBarIconColor: blackColor,
            leading: IconButton(
              onPressed: () {
                context.read<ChatManagementCubit>().reset();
                context.go(context.namedLocation("camera_page"));
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: blackColor,
              ),
            ),
            maxFontSize: 23,
            minFontSize: 19,
            textPadding: EdgeInsets.zero,
          ),
          body: BlocBuilder<ChatManagementCubit, ChatManagementState>(
            builder: (context, state) {
              final isInProgress = state.isInProgress;

              if (isInProgress) {
                return const CustomProgressIndicator(progressIndicatorColor: blackColor);
              } else {
                return CaptureAndSendPhotoPageBody(state: state);
              }
            },
          ),
        ),
      ),
    );
  }
}
