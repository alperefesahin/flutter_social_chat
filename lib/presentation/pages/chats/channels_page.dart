import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelsPage extends StatelessWidget {
  const ChannelsPage({
    Key? key,
    required this.streamChannelListController,
  }) : super(key: key);
  final StreamChannelListController streamChannelListController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
