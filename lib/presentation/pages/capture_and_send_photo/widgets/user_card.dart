import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.isUserSelected,
    required this.memberImage,
    required this.memberName,
    required this.memberlastMessageTime,
    required this.channelCreatedTime,
  });

  final bool isUserSelected;

  final double deviceHeight;
  final double deviceWidth;

  final String memberImage;
  final String memberName;
  final String memberlastMessageTime;
  final String channelCreatedTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight / 6,
      width: deviceWidth,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: isUserSelected ? customGreyColor400 : white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CachedNetworkImage(
                    imageUrl: memberImage,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      radius: 40,
                      backgroundImage: imageProvider,
                    ),
                    placeholder: (context, url) => const CircleAvatar(
                      radius: 40,
                      child: CircularProgressIndicator(color: black),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: CustomText(
                        text: memberName,
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 20),
                      child: CustomText(
                        text: memberlastMessageTime == AppLocalizations.of(context)?.startNewConversation
                            ? AppLocalizations.of(context)?.startNewConversation ?? ''
                            : AppLocalizations.of(context)?.lastMessageOn(memberlastMessageTime) ?? '',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, right: 12),
              child: CustomText(
                text: channelCreatedTime,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
