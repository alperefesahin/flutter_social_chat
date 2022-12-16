import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';
import 'package:flutter_production_app/presentation/pages/camera/constants/texts.dart';

class NoPermissionWidget extends StatelessWidget {
  const NoPermissionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        text: giveRelatedPermission,
        textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
        minFontSize: 24,
        maxFontSize: 25,
        textPadding: EdgeInsets.all(8),
      ),
    );
  }
}
