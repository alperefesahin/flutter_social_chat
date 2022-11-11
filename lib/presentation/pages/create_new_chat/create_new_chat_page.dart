import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/create_new_chat_button.dart';
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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => userListController.refresh(),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: isCreateNewChatPageForCreatingGroup!
                  ? MediaQuery.of(context).size.height / 2
                  : MediaQuery.of(context).size.height / 1.4,
              child: StreamUserListView(
                shrinkWrap: true,
                controller: userListController,
                /*  itemBuilder: (context, users, index, defaultWidget) {
                  return defaultWidget.copyWith(
                      /*        selected: selectedUsers.contains(users[index]), */
                      );
                }, */
                onUserTap: (user) {
                  debugPrint(user.id);
                },
              ),
            ),
            isCreateNewChatPageForCreatingGroup!
                ? Column(
                    children: [
                      const Text("Group name"),
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
                        onPressed: () {},
                        isCreateNewChatPageForCreatingGroup:
                            isCreateNewChatPageForCreatingGroup!,
                      ),
                    ],
                  )
                : CreateNewChatButton(
                    onPressed: () {},
                    isCreateNewChatPageForCreatingGroup:
                        isCreateNewChatPageForCreatingGroup!,
                  ),
          ],
        ),
      ),
    );
  }
}
