import 'package:flutter/material.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmationTextWithIcon extends StatelessWidget {
  const ConfirmationTextWithIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String confirmationText = AppLocalizations.of(context)?.confirmation ?? '';

    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        spacing: 20,
        children: [
          const Icon(Icons.check_rounded, size: 28, color: white),
          CustomText(text: confirmationText, color: white, fontWeight: FontWeight.w600, fontSize: 28),
        ],
      ),
    );
  }
}
