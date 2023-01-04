import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text.dart';

class CreateNewChatButton extends StatelessWidget {
  const CreateNewChatButton({
    super.key,
    required this.isCreateNewChatPageForCreatingGroup,
  });

  final bool isCreateNewChatPageForCreatingGroup;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(customIndigoColor),
          padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
        ),
        onPressed: () {
          context.read<ChatManagementCubit>().createNewChannel(
                isCreateNewChatPageForCreatingGroup: isCreateNewChatPageForCreatingGroup,
              );
        },
        child: CustomText(
          text: isCreateNewChatPageForCreatingGroup
              ? AppLocalizations.of(context).createNewGroupChat
              : AppLocalizations.of(context).createNewOneToOneChat,
          minFontSize: 15,
          maxFontSize: 17,
          textPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
