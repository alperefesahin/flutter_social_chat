import 'package:flutter/material.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';
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
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CustomText(
                  text: '@$userName',
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: CustomText(
                  text: userId,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
