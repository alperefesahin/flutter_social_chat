import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class SearchedChannel extends StatelessWidget {
  const SearchedChannel({
    super.key,
    required this.listOfChannels,
    required this.searchedText,
    required this.index,
    required this.defaultWidget,
  });

  final List<Channel> listOfChannels;
  final String searchedText;
  final int index;
  final StreamChannelListTile defaultWidget;

  @override
  Widget build(BuildContext context) {
    final channel = listOfChannels[index];

    final channelMembers = channel.state!.members;

    final lengthOfTheChannelMembers = channelMembers.length;

    final oneToOneChatMember = channelMembers
        .where((member) => member.userId != context.read<AuthCubit>().state.authUser.id)
        .first
        .user!;

    final isTheSearchedChannelExist =
        context.read<ChatManagementCubit>().searchInsideExistingChannels(
              listOfChannels: listOfChannels,
              searchedText: searchedText,
              index: index,
              oneToOneChatMember: oneToOneChatMember,
              lengthOfTheChannelMembers: lengthOfTheChannelMembers,
            );

    final lastMessage = channel.state!.lastMessage == null
        ? AppLocalizations.of(context).beDeepIntoTheConversation
        : channel.state!.lastMessage!.attachments.isNotEmpty
            ? AppLocalizations.of(context).attachment
            : channel.state!.lastMessage!.text;

    if (isTheSearchedChannelExist) {
      return defaultWidget.copyWith(
        contentPadding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
        channel: channel,
        leading: CachedNetworkImage(
          imageUrl: lengthOfTheChannelMembers == 2 ? oneToOneChatMember.image! : channel.image!,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            radius: 40,
            backgroundImage: imageProvider,
          ),
          placeholder: (context, url) => const CircleAvatar(
            radius: 40,
            child: CircularProgressIndicator(color: blackColor),
          ),
        ),
        title: Text(
          lengthOfTheChannelMembers == 2 ? oneToOneChatMember.name : channel.name!,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          lastMessage!,
          style: const TextStyle(fontSize: 15),
          overflow: TextOverflow.ellipsis,
        ),
        visualDensity: const VisualDensity(vertical: 3),
      );
    } else {
      return Container();
    }
  }
}
