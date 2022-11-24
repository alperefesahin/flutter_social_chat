import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class SearchedChannel extends StatelessWidget {
  const SearchedChannel(
      {Key? key,
      required this.listOfChannels,
      required this.searchedText,
      required this.index,
      required this.defaultWidget})
      : super(key: key);

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
        ? defaultWidget.copyWith(channel: channel)
        : Container();
  }
}
