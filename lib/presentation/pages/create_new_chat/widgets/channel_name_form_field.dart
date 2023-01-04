import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';

class ChannelNameFormField extends StatelessWidget {
  const ChannelNameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          validator: (channelName) {
            if (channelName!.trim().isEmpty) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return AppLocalizations.of(context).channelNameCanNotBeAnEmpty;
            } else if (channelName.trim().length > 10) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return AppLocalizations.of(context).channelNameCanNotBeLongerThanTenCharacters;
            } else if (channelName.trim().length < 3) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return AppLocalizations.of(context).channelNameCanNotBeShorterThanThreeCharacters;
            } else if (channelName.trim().isEmpty) {
              context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: false);
              return AppLocalizations.of(context).channelNameCanNotBeAnEmpty;
            }
            context.read<ChatManagementCubit>().validateChannelName(isChannelNameValid: true);
            return null;
          },
          autocorrect: false,
          onChanged: (channelName) =>
              context.read<ChatManagementCubit>().channelNameChanged(channelName: channelName),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            labelText: AppLocalizations.of(context).groupName,
            hintText: AppLocalizations.of(context).yourInspirationalGroupName,
            iconColor: blackColor,
            hintStyle: const TextStyle(color: blackColor),
            labelStyle: const TextStyle(color: blackColor),
            prefixIcon: const Icon(CupertinoIcons.group, color: blackColor),
          ),
        ),
      ),
    );
  }
}
