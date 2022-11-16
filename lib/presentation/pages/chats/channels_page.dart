import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_production_app/presentation/pages/chats/widgets/animated_create_new_chat_button.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelsPage extends StatelessWidget {
  const ChannelsPage({
    Key? key,
    required this.streamChannelListController,
    required this.userListController,
  }) : super(key: key);

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: TextField(
              onChanged: (text) {
                searchedText = text;
                streamChannelListController.refresh();
              },
              decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamChannelListView(
              controller: streamChannelListController,
              onChannelTap: (channel) {
                context.router.push(ChatRoute(channel: channel));
              },
            ),
          ),
        ],
      ),
    );
  }
}
