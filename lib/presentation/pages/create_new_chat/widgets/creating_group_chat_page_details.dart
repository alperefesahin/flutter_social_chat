import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
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
        BlocBuilder<ChatManagementCubit, ChatManagementState>(
          builder: (context, state) {
            final listOfSelectedUsers = state.listOfSelectedUsers.toList();

            return SizedBox(
              width: 300,
              height: 100,
              child: listOfSelectedUsers.isEmpty
                  ? const Divider(thickness: 2, endIndent: 20, indent: 20)
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: listOfSelectedUsers.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CachedNetworkImage(
                          imageUrl: listOfSelectedUsers[index].image!,
                          imageBuilder: (context, imageProvider) => CircleAvatar(
                            radius: 25,
                            backgroundImage: imageProvider,
                          ),
                          placeholder: (context, url) => const CircleAvatar(
                            radius: 25,
                            child: CircularProgressIndicator(color: blackColor),
                          ),
                        );
                      },
                    ),
            );
          },
        ),
        CreateNewChatButton(
          isCreateNewChatPageForCreatingGroup: isCreateNewChatPageForCreatingGroup!,
        ),
      ],
    );
  }
}
