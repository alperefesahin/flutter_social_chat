import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/channel_name_form_field.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/widgets/create_new_chat_button.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

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
                  ? const Divider(thickness: 2, endIndent: 20, indent: 20)
                  : SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: itemOverlap * (listOfSelectedUsers.length - 1) + itemSize,
                        child: Stack(
                          children: List.generate(
                            listOfSelectedUsers.length,
                            (index) {
                              return StackItem(
                                leftPadding: index * itemOverlap,
                                user: listOfSelectedUsers[index],
                              );
                            },
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

class StackItem extends StatelessWidget {
  const StackItem({super.key, required this.user, required this.leftPadding});
  final User user;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftPadding,
      top: 0,
      bottom: 0,
      child: CachedNetworkImage(
        imageUrl: user.image!,
        imageBuilder: (context, imageProvider) => CircleAvatar(
          radius: itemSize / 2,
          backgroundImage: imageProvider,
        ),
        placeholder: (context, url) => const CircleAvatar(
          radius: itemSize / 2,
          child: CircularProgressIndicator(color: blackColor),
        ),
      ),
    );
  }
}
