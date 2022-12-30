import 'package:flutter/material.dart';

import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/channels/constants/texts.dart';

class ChannelsAppBar extends StatelessWidget with PreferredSizeWidget {
  ChannelsAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(60.0);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: transparentColor,
      backgroundColor: transparentColor,
      leadingWidth: 200,
      leading: const CustomText(
        text: chats,
        minFontSize: 40,
        maxFontSize: 45,
        textPadding: EdgeInsets.only(left: 15),
        textStyle: TextStyle(
          fontWeight: FontWeight.w800,
          color: blackColor,
        ),
      ),
    );
  }
}
