import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
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
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.router.replace(CreateNewChatRoute(
                userListController: userListController,
                isCreateNewChatPageForCreatingGroup: true,
              ));
            },
            child: const Icon(CupertinoIcons.group_solid),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.router.replace(CreateNewChatRoute(
                userListController: userListController,
                isCreateNewChatPageForCreatingGroup: false,
              ));
            },
            child: const Icon(CupertinoIcons.person_fill),
          ),
        ],
        child: const Icon(Icons.add),
      ),
      body: StreamChannelListView(
        controller: streamChannelListController,
        onChannelTap: (channel) {
          context.router.push(ChatRoute(channel: channel));
        },
      ),
    );
  }
}
