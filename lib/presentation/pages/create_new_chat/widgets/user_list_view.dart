import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class UserListView extends StatelessWidget {
  const UserListView({
    Key? key,
    required this.userListController,
    this.isCreateNewChatPageForCreatingGroup,
  }) : super(key: key);

  final StreamUserListController userListController;
  final bool? isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: deviceWidth,
      height: isCreateNewChatPageForCreatingGroup!
          ? deviceHeight / 2
          : deviceHeight / 1.4,
      child: BlocBuilder<ChatManagementCubit, ChatManagementState>(
        builder: (context, state) {
          return StreamUserListView(
            shrinkWrap: true,
            controller: userListController,
            itemBuilder: (context, users, index, defaultWidget) {
              return defaultWidget.copyWith(
                selected: state.listOfSelectedUserIDs.contains(users[index].id),
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
    );
  }
}
