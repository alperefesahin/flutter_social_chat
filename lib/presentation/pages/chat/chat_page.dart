import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
    required this.channel,
  });
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final channelMembers = channel.state!.members;
    final lengthOfTheChannelMembers = channelMembers.length;

    final oneToOneChatMember = channelMembers
        .where((member) => member.userId != context.read<AuthCubit>().state.authUser.id)
        .first
        .user!;

    return StreamChannel(
      channel: channel,
      child: Scaffold(
        appBar: StreamChannelHeader(
          backgroundColor: kiwiBackColor,
          title: Text(
            lengthOfTheChannelMembers == 2 ? oneToOneChatMember.name : channel.name!,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  lengthOfTheChannelMembers == 2 ? oneToOneChatMember.image! : channel.image!,
                ),
              ),
            ),
          ],
          onBackPressed: () {
            context.go(context.namedLocation("channels_page"));
          },
        ),
        body: Column(
          children: [
            const Expanded(
              child: StreamMessageListView(),
            ),
            StreamMessageInput(
              autoCorrect: false,
              idleSendButton: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.send, size: 30, color: customGreyColor),
              ),
              activeSendButton: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.send, size: 30, color: kiwiColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
