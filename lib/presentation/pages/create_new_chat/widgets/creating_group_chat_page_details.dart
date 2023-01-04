import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/presentation/pages/create_new_chat/widgets/channel_name_form_field.dart';
import 'package:flutter_social_chat/presentation/pages/create_new_chat/widgets/create_new_chat_button.dart';
import 'package:flutter_social_chat/presentation/pages/create_new_chat/widgets/selected_user_item.dart';

const double itemSize = 70;
const double itemOverlap = 50;

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
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: listOfSelectedUsers.isEmpty
                  ? const Divider(thickness: 2, endIndent: 60, indent: 60)
                  : SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          width: itemOverlap * (listOfSelectedUsers.length - 1) + itemSize,
                          child: Stack(
                            children: List.generate(
                              listOfSelectedUsers.length,
                              (index) {
                                return SelectedUserItem(
                                  leftPadding: index * itemOverlap,
                                  user: listOfSelectedUsers[index],
                                  itemSize: itemSize,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
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
