import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

class NoPermissionWidget extends StatelessWidget {
  const NoPermissionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: AppLocalizations.of(context)?.giveRelatedPermission ?? '',
        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
        textPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
