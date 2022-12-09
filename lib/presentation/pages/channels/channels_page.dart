import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text_field.dart';
import 'package:flutter_production_app/presentation/pages/channels/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/animated_create_new_chat_button.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/channels_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/searched_channel.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelsPage extends StatelessWidget {
  const ChannelsPage({
    super.key,
    required this.streamChannelListController,
    required this.userListController,
  });

  final StreamChannelListController streamChannelListController;
  final StreamUserListController userListController;

  @override
  Widget build(BuildContext context) {
    String searchedText = "";

    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: AnimatedCreateNewChatButton(
        userListController: userListController,
      ),
      appBar: ChannelsAppBar(),
      body: Column(
        children: [
          CustomTextField(
            icon: Icons.search,
            labelText: search,
            hintText: searchSomeone,
            onChanged: (text) {
              searchedText = text;
              streamChannelListController.refresh();
            },
          ),
          Expanded(
            child: StreamChannelListView(
              controller: streamChannelListController,
              onChannelTap: (channel) {
                context.router.push(ChatRoute(channel: channel));
              },
              itemBuilder: (context, listOfChannels, index, defaultWidget) {
                return SearchedChannel(
                  listOfChannels: listOfChannels,
                  searchedText: searchedText,
                  index: index,
                  defaultWidget: defaultWidget,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
