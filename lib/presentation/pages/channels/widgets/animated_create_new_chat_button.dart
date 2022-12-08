import 'package:flutter/cupertino.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/custom_float_action_button.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class AnimatedCreateNewChatButton extends StatelessWidget {
  const AnimatedCreateNewChatButton({
    super.key,
    required this.userListController,
  });

  final StreamUserListController userListController;

  @override
  Widget build(BuildContext context) {
    return ExpandableFab(
      backgroundColor: floatingActionButtonColor,
      closeButtonStyle:
          const ExpandableFabCloseButtonStyle(backgroundColor: floatingActionButtonColor),
      children: [
        CustomFloatActionButton(
          buttonIcon: CupertinoIcons.group_solid,
          isCreateNewChatPageForCreatingGroup: true,
          userListController: userListController,
        ),
        CustomFloatActionButton(
          buttonIcon: CupertinoIcons.person_fill,
          isCreateNewChatPageForCreatingGroup: false,
          userListController: userListController,
        ),
      ],
      child: const Icon(CupertinoIcons.chat_bubble_text),
    );
  }
}
