import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/channels/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/channels/widgets/animated_create_new_chat_button.dart';
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
      appBar: AppBar(
        shadowColor: transparentColor,
        backgroundColor: const Color.fromRGBO(198, 206, 247, 0.65),
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const CustomText(
                text: kiwi,
                minFontSize: 26,
                maxFontSize: 30,
                textPadding: EdgeInsets.only(right: 10),
                textStyle: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(44, 57, 126, 1),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/kiwi.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
