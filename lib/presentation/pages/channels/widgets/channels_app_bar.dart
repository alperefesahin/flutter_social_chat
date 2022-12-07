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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      shadowColor: transparentColor,
      backgroundColor: const Color.fromRGBO(198, 206, 247, 0.65),
      leadingWidth: 200,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            const CustomText(
              text: kiwi,
              minFontSize: 26,
              maxFontSize: 30,
              textPadding: EdgeInsets.only(right: 10),
              textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                color: kiwiColor,
              ),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/kiwi.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
