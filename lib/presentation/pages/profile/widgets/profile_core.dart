import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/profile_image.dart';

class ProfileCore extends StatelessWidget {
  const ProfileCore({
    super.key,
    required this.userName,
    required this.userPhoneNumber,
    required this.userPhotoUrl,
  });

  final String userName;
  final String userPhoneNumber;
  final String userPhotoUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileImage(
            userPhotoUrl: userPhotoUrl,
          ),
          CustomText(
            text: "@$userName",
            minFontSize: 22,
            maxFontSize: 25,
            textStyle: const TextStyle(fontWeight: FontWeight.w700),
            textPadding: const EdgeInsets.only(top: 12),
          ),
          CustomText(
            text: userPhoneNumber,
            minFontSize: 17,
            maxFontSize: 20,
            textStyle: const TextStyle(fontWeight: FontWeight.w400),
            textPadding: const EdgeInsets.only(top: 5),
          ),
        ],
      ),
    );
  }
}
