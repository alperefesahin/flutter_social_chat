import 'package:flutter/material.dart';

class CreateNewChatButton extends StatelessWidget {
  const CreateNewChatButton({
    Key? key,
    required this.onPressed,
    required this.isCreateNewChatPageForCreatingGroup,
  }) : super(key: key);

  final void Function() onPressed;
  final bool isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        isCreateNewChatPageForCreatingGroup
            ? "Create a new group chat"
            : "Create a new 1-1 chat",
      ),
    );
  }
}
