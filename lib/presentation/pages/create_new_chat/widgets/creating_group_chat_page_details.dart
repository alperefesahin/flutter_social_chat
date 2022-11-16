import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/create_new_chat_button.dart';

class CreatingGroupChatPageDetails extends StatelessWidget {
  const CreatingGroupChatPageDetails({
    Key? key,
    this.isCreateNewChatPageForCreatingGroup,
  }) : super(key: key);

  final bool? isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            validator: (value) {
              //TODO: Do it with 'form_validator' package
            },
            autocorrect: false,
            onChanged: (channelName) => context
                .read<ChatManagementCubit>()
                .channelNameChanged(channelName: channelName),
            decoration: const InputDecoration(
              prefixIcon: Icon(CupertinoIcons.group_solid),
              labelText: groupName,
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
    );
  }
}
