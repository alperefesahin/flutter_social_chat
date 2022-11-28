import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/constants/texts.dart';

class ChannelNameFormField extends StatelessWidget {
  const ChannelNameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          validator: (channelName) {
            if (channelName!.trim().isEmpty) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return channelNameCanNotBeAnEmpty;
            } else if (channelName.trim().length > 10) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return channelNameCanNotBeLongerThanTenCharacters;
            } else if (channelName.trim().length < 3) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return channelNameCanNotBeShorterThanThreeCharacters;
            } else if (channelName.trim().isEmpty) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return channelNameCanNotBeAnEmpty;
            }
            context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: true);
            return null;
          },
          autocorrect: false,
          onChanged: (channelName) =>
              context.read<ChatManagementCubit>().channelNameChanged(channelName: channelName),
          decoration: const InputDecoration(
            prefixIcon: Icon(CupertinoIcons.group_solid),
            labelText: groupName,
          ),
        ),
      ),
    );
  }
}
