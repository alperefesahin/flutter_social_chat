import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CaptureAndSendPhotoPage extends StatefulWidget {
  const CaptureAndSendPhotoPage({
    super.key,
    required this.pathOfTheTakenPhoto,
    required this.sizeOfTheTakenPhoto,
  });

  final String pathOfTheTakenPhoto;
  final int sizeOfTheTakenPhoto;

  @override
  State<CaptureAndSendPhotoPage> createState() => _CaptureAndSendPhotoPageState();
}

class _CaptureAndSendPhotoPageState extends State<CaptureAndSendPhotoPage> {
  late final StreamUserListController userListController = StreamUserListController(
    client: StreamChat.of(context).client,
    limit: 25,
    filter: Filter.and(
      [Filter.notEqual('id', StreamChat.of(context).currentUser!.id)],
    ),
    sort: [
      const SortOption('name', direction: 1),
    ],
  );

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
                  pathOfTheTakenPhoto: widget.pathOfTheTakenPhoto,
                  sizeOfTheTakenPhoto: widget.sizeOfTheTakenPhoto,
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
        body: RefreshIndicator(
          onRefresh: () => userListController.refresh(),
          child: BlocBuilder<ChatManagementCubit, ChatManagementState>(
            builder: (context, state) {
              return SizedBox(
                width: deviceWidth,
                height: deviceHeight,
                child: StreamUserListView(
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
              );
            },
          ),
        ),
      ),
    );
  }
}
