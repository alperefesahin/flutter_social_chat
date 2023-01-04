import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CustomFloatActionButton extends StatelessWidget {
  const CustomFloatActionButton({
    super.key,
    required this.buttonIcon,
    required this.userListController,
    required this.isCreateNewChatPageForCreatingGroup,
  });

  final IconData buttonIcon;
  final StreamUserListController userListController;
  final bool isCreateNewChatPageForCreatingGroup;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: customIndigoColor,
      heroTag: null,
      onPressed: () {
        context.go(
          context.namedLocation("create_new_chat_page"),
          extra: {
            "userListController": userListController,
            "isCreateNewChatPageForCreatingGroup": isCreateNewChatPageForCreatingGroup
          },
        );
      },
      child: Icon(buttonIcon),
    );
  }
}
