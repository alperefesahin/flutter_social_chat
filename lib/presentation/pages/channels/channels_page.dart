import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text_field.dart';
import 'package:flutter_production_app/presentation/pages/channels/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/animated_create_new_chat_button.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/channels_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/searched_channel.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({super.key});
  static Page page() => const MaterialPage<void>(child: ChannelsPage());
  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends State<ChannelsPage> {
  late final streamChannelListController = StreamChannelListController(
    client: StreamChat.of(context).client,
    filter: Filter.in_(
      'members',
      [StreamChat.of(context).currentUser!.id],
    ),
    channelStateSort: const [SortOption('last_message_at')],
    limit: 20,
  );

  late final StreamUserListController userListController = StreamUserListController(
    client: StreamChat.of(context).client,
    limit: 25,
    filter: Filter.and(
      [Filter.notEqual('id', StreamChat.of(context).currentUser!.id)],
    ),
    sort: [
      const SortOption('name', direction: 1),
    ],
  );

  @override
  void dispose() {
    streamChannelListController.dispose();
    super.dispose();
  }

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
                //Todo:
                /*    context.router.push(ChatRoute(channel: channel)); */
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
