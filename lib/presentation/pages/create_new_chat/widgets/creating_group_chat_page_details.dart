import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/channel_name_form_field.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/create_new_chat_button.dart';

class CreatingGroupChatPageDetails extends StatelessWidget {
  const CreatingGroupChatPageDetails({
    super.key,
    this.isCreateNewChatPageForCreatingGroup,
  });

  final bool? isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChannelNameFormField(),
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
          isCreateNewChatPageForCreatingGroup: isCreateNewChatPageForCreatingGroup!,
        ),
      ],
    );
  }
}
