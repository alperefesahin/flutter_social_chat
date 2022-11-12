import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/create_new_chat_button.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CreateNewChatPage extends StatelessWidget {
  const CreateNewChatPage({
    Key? key,
    required this.userListController,
    this.isCreateNewChatPageForCreatingGroup,
  }) : super(key: key);

  final StreamUserListController userListController;
  final bool? isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatManagementCubit>()..reset(),
      child: Builder(builder: (context) {
        return WillPopScope(
          onWillPop: () async => Future.value(false),
          child: Scaffold(
            appBar: CustomAppBar(
              appBarTitle: "Chats Page",
              appBarAction: Icons.exit_to_app,
              actionsOnPressed: () {
                /*        context.read<ChatManagementCubit>().reset(); */
                context.router.replace(const BottomTabRoute());
              },
              appBarBackgroundColor: whiteColor,
              appBarIconColor: blackColor,
            ),
            body: RefreshIndicator(
              onRefresh: () => userListController.refresh(),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: isCreateNewChatPageForCreatingGroup!
                        ? MediaQuery.of(context).size.height / 2
                        : MediaQuery.of(context).size.height / 1.4,
                    child:
                        BlocBuilder<ChatManagementCubit, ChatManagementState>(
                      builder: (context, state) {
                        return StreamUserListView(
                          shrinkWrap: true,
                          controller: userListController,
                          itemBuilder: (context, users, index, defaultWidget) {
                            return defaultWidget.copyWith(
                              selected: state.listOfSelectedUserIDs
                                  .contains(users[index].id),
                            );
                          },
                          onUserTap: (user) {
                            context.read<ChatManagementCubit>().selectUser(
                                  user: user,
                                  isCreateNewChatPageForCreatingGroup:
                                      isCreateNewChatPageForCreatingGroup!,
                                );
                          },
                        );
                      },
                    ),
                  ),
                  isCreateNewChatPageForCreatingGroup!
                      ? Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                validator: (value) {
                                  //TODO: Do it with 'form_validator' package
                                },
                                autocorrect: false,
                                onChanged: (channelName) => context
                                    .read<ChatManagementCubit>()
                                    .channelNameChanged(
                                        channelName: channelName),
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(CupertinoIcons.group_solid),
                                  labelText: 'Group Name',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 15,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return CircleAvatar(
                                    radius: 15,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://picsum.photos/200/300',
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            CreateNewChatButton(
                              isCreateNewChatPageForCreatingGroup:
                                  isCreateNewChatPageForCreatingGroup!,
                            ),
                          ],
                        )
                      : CreateNewChatButton(
                          isCreateNewChatPageForCreatingGroup:
                              isCreateNewChatPageForCreatingGroup!,
                        ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
