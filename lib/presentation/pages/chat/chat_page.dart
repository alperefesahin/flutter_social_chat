import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/pages/chat/widgets/chat_page_body.dart';
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
          backgroundColor: whiteColor,
          title: Text(
            lengthOfTheChannelMembers == 2 ? oneToOneChatMember.name : channel.name!,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CachedNetworkImage(
                imageUrl:
                    lengthOfTheChannelMembers == 2 ? oneToOneChatMember.image! : channel.image!,
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  radius: 20,
                  backgroundImage: imageProvider,
                ),
                placeholder: (context, url) => const CircleAvatar(
                  radius: 20,
                  child: CircularProgressIndicator(color: blackColor),
                ),
              ),
            ),
          ],
          onBackPressed: () {
            context.go(context.namedLocation("channels_page"));
          },
        ),
        body: const ChatPageBody(),
      ),
    );
  }
}
