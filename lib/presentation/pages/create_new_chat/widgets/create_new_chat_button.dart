import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';

class CreateNewChatButton extends StatelessWidget {
  const CreateNewChatButton({
    Key? key,
    required this.isCreateNewChatPageForCreatingGroup,
  }) : super(key: key);

  final bool isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<ChatManagementCubit>().createNewChannel(
              isCreateNewChatPageForCreatingGroup:
                  isCreateNewChatPageForCreatingGroup,
            );
      },
      child: Text(
        isCreateNewChatPageForCreatingGroup
            ? "Create a new group chat"
            : "Create a new 1-1 chat",
      ),
    );
  }
}
