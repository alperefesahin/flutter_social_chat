import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/title_text_pair.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          TitleTextPair(title: "title", text: "text"),
          TitleTextPair(title: "title", text: "text"),
          TitleTextPair(title: "title", text: "text"),
        ],
      ),
    );
  }
}
