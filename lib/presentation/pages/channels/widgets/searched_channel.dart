import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
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
    final isTheSearchedChannelExist =
        context.read<ChatManagementCubit>().searchInsideExistingChannels(
              listOfChannels: listOfChannels,
              searchedText: searchedText,
              index: index,
            );

    final channel = listOfChannels[index];

    return isTheSearchedChannelExist
        ? defaultWidget.copyWith(
            channel: channel,
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(channel.image!),
            ),
            visualDensity: const VisualDensity(vertical: 3),
          )
        : Container();
  }
}
