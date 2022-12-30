import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/constants/texts.dart';

class ChannelNameFormField extends StatelessWidget {
  const ChannelNameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
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
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            labelText: groupName,
            hintText: yourInspirationalGroupName,
            iconColor: blackColor,
            hintStyle: TextStyle(color: blackColor),
            labelStyle: TextStyle(color: blackColor),
            prefixIcon: Icon(CupertinoIcons.group, color: blackColor),
          ),
        ),
      ),
    );
  }
}
