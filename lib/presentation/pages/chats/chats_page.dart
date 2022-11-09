import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_setup/chat_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/pages/chats/widgets/channel_page.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final client = getIt<StreamChatClient>();

    return BlocBuilder<ChatSetup, ChatSetupState>(
      builder: (context, state) {
        final channel = state.getstreamChannel;

        return Scaffold(
          body: channel == null
              ? const CustomProgressIndicator(
                  progressIndicatorColor: blackColor)
              : StreamChat(
                  client: client,
                  child: StreamChannel(
                    channel: channel,
                    child: const ChannelPage(),
                  ),
                ),
        );
      },
    );
  }
}
