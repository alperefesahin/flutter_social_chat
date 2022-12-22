import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
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
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

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
          appBarAction: Icons.exit_to_app,
          actionsOnPressed: () {
            context.read<ChatManagementCubit>().reset();
            context.go(context.namedLocation("camera_page"));
          },
          appBarBackgroundColor: whiteColor,
          appBarIconColor: blackColor,
        ),
        body: BlocBuilder<ChatManagementCubit, ChatManagementState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async => context.read<ChatManagementCubit>().reset(),
              child: SizedBox(
                width: deviceWidth,
                height: deviceHeight,
                child: ListView.builder(
                  itemCount: state.currentUserChannels.length,
                  itemBuilder: (context, index) {
                    final memberName = state.currentUserChannels[index].name;
                    final memberImage = state.currentUserChannels[index].image;
                    final memberlastMessageAt =
                        state.currentUserChannels[index].lastMessageAt.toString();

                    return Center(
                      child: Column(
                        children: [
                          Text(memberName!),
                          Text(memberImage!),
                          Text(memberlastMessageAt),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/* 
Previous streamUserListView
StreamUserListView(
                  shrinkWrap: true,
                  controller: userListController,
                  itemBuilder: (context, users, index, defaultWidget) {
                    return defaultWidget.copyWith(
                      selected: state.listOfSelectedUserIDs.contains(users[index].id),
                    );
                  },
                  onUserTap: (user) {
                    context.read<ChatManagementCubit>().selectUserToSendCapturedPhoto(user: user);
                  },
                ),
 */
