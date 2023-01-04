import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class SelectedUserItem extends StatelessWidget {
  const SelectedUserItem({
    super.key,
    required this.user,
    required this.leftPadding,
    required this.itemSize,
  });

  final User user;
  final double leftPadding;
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftPadding,
      top: 0,
      bottom: 0,
      child: CachedNetworkImage(
        imageUrl: user.image!,
        imageBuilder: (context, imageProvider) => CircleAvatar(
          radius: itemSize / 2,
          backgroundImage: imageProvider,
        ),
        placeholder: (context, url) => CircleAvatar(
          radius: itemSize / 2,
          child: const CircularProgressIndicator(color: blackColor),
        ),
      ),
    );
  }
}
