import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text.dart';

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
        color: isUserSelected ? customGreyColor400 : whiteColor,
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
                      child: CircularProgressIndicator(color: blackColor),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: memberName,
                      minFontSize: 21,
                      maxFontSize: 23,
                      textPadding: const EdgeInsets.only(left: 10, bottom: 10),
                      textStyle: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    CustomText(
                      text:
                          memberlastMessageTime == AppLocalizations.of(context).startNewConversation
                              ? AppLocalizations.of(context).startNewConversation
                              : AppLocalizations.of(context).lastMessageOn(memberlastMessageTime),
                      minFontSize: 15,
                      maxFontSize: 20,
                      textPadding: const EdgeInsets.only(left: 10, bottom: 20),
                      textStyle: const TextStyle(fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
            CustomText(
              text: channelCreatedTime,
              minFontSize: 12,
              maxFontSize: 13,
              textPadding: const EdgeInsets.only(top: 12, right: 12),
            ),
          ],
        ),
      ),
    );
  }
}
