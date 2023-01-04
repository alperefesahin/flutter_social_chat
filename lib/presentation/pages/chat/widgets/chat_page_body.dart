import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatPageBody extends StatelessWidget {
  const ChatPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: StreamMessageListView(),
        ),
        StreamMessageInput(
          autoCorrect: false,
          idleSendButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.send, size: 30, color: customGreyColor600),
          ),
          activeSendButton: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.send, size: 30, color: customIndigoColor),
          ),
        ),
      ],
    );
  }
}
