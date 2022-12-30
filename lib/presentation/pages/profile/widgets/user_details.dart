import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/profile/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/title_text_pair.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
    required this.createdAt,
    required this.userRole,
    required this.isUserBannedStatus,
  });

  final String createdAt;
  final String userRole;
  final bool isUserBannedStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: Column(
        children: [
          const Divider(thickness: 1, endIndent: 20, indent: 20),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleTextPair(title: createdAtText, text: createdAt),
              TitleTextPair(title: role, text: userRole),
              TitleTextPair(title: banStatus, text: isUserBannedStatus ? "Banned" : "None"),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(thickness: 1, endIndent: 20, indent: 20),
        ],
      ),
    );
  }
}
