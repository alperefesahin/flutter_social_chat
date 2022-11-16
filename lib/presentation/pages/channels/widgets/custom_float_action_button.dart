import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CustomFloatActionButton extends StatelessWidget {
  const CustomFloatActionButton({
    Key? key,
    required this.buttonIcon,
    required this.userListController,
    required this.isCreateNewChatPageForCreatingGroup,
  }) : super(key: key);

  final IconData buttonIcon;
  final StreamUserListController userListController;
  final bool isCreateNewChatPageForCreatingGroup;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: () {
        context.router.replace(CreateNewChatRoute(
          userListController: userListController,
          isCreateNewChatPageForCreatingGroup:
              isCreateNewChatPageForCreatingGroup,
        ));
      },
      child: Icon(buttonIcon),
    );
  }
}
