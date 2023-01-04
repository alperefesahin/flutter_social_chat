import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text_field.dart';
import 'package:flutter_social_chat/presentation/pages/channels/widgets/animated_create_new_chat_button.dart';
import 'package:flutter_social_chat/presentation/pages/channels/widgets/searched_channel.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({super.key});

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
  Widget build(BuildContext context) {
    String searchedText = "";

    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: AnimatedCreateNewChatButton(
        userListController: userListController,
      ),
      appBar: CustomAppBar(
        centerTitle: false,
        appBarTitle: AppLocalizations.of(context).chats,
        appBarBackgroundColor: transparentColor,
        maxFontSize: 45,
        minFontSize: 40,
        textPadding: const EdgeInsets.only(left: 15),
        appBarTitleTextStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          color: blackColor,
        ),
      ),
      body: Column(
        children: [
          CustomTextField(
            icon: Icons.search,
            labelText: AppLocalizations.of(context).search,
            hintText: AppLocalizations.of(context).searchSomeone,
            onChanged: (text) {
              searchedText = text;
              streamChannelListController.refresh();
            },
          ),
          Expanded(
            child: StreamChannelListView(
              controller: streamChannelListController,
              onChannelTap: (channel) {
                context.go(context.namedLocation("chat_page"), extra: channel);
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
