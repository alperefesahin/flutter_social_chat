import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/capture_and_send_photo/widgets/capture_and_send_photo_page_body.dart';
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
    return WillPopScope(
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
          appBarTitle: "",
          appBarAction: CupertinoIcons.line_horizontal_3_decrease,
          appBarLeading: CupertinoIcons.back,
          leadingOnPressed: () {
            context.read<ChatManagementCubit>().reset();
            context.go(context.namedLocation("camera_page"));
          },
          appBarIconColor: blackColor,
        ),
        body: BlocBuilder<ChatManagementCubit, ChatManagementState>(
          builder: (context, state) {
            return CaptureAndSendPhotoPageBody(state: state);
          },
        ),
      ),
    );
  }
}
