import 'package:flutter/material.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text.dart';
import 'package:flutter_social_chat/presentation/pages/profile/widgets/profile_image.dart';

class ProfileCore extends StatelessWidget {
  const ProfileCore({
    super.key,
    required this.userName,
    required this.userPhoneNumber,
    required this.userPhotoUrl,
    required this.userId,
  });

  final String userName;
  final String userPhoneNumber;
  final String userPhotoUrl;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileImage(
          userPhotoUrl: userPhotoUrl,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "@$userName",
                minFontSize: 25,
                maxFontSize: 30,
                textStyle: const TextStyle(fontWeight: FontWeight.w700),
                textPadding: const EdgeInsets.only(top: 12),
              ),
              CustomText(
                text: userId,
                minFontSize: 13,
                maxFontSize: 14,
                textStyle: const TextStyle(fontWeight: FontWeight.w400),
                textPadding: const EdgeInsets.only(top: 5),
              ),
            ],
          ),
        )
      ],
    );
  }
}
