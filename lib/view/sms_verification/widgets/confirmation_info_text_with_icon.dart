import 'package:flutter/material.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationInfoTextWithIcon extends StatelessWidget {
  const ConfirmationInfoTextWithIcon({Key? key, required this.phoneNumber}) : super(key: key);

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final String confirmationInfoText = AppLocalizations.of(context)?.confirmationInfo ?? '';

    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 12, right: 24),
      child: Row(
        spacing: 16,
        children: [
          const Icon(Icons.phone_iphone_outlined, size: 52, color: white),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: confirmationInfoText,
                    style: GoogleFonts.roboto(fontSize: 20, color: white, fontWeight: FontWeight.w300, height: 1.6),
                  ),
                  TextSpan(
                    text: phoneNumber,
                    style: GoogleFonts.roboto(fontSize: 20, color: white, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
