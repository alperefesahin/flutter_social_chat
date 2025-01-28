import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.btnController});

  final RoundedLoadingButtonController btnController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RoundedLoadingButton(
        color: customIndigoColor.withBlue(200),
        failedIcon: CupertinoIcons.xmark,
        successIcon: CupertinoIcons.checkmark,
        controller: btnController,
        onPressed: () {
          btnController.reset();
          context.read<AuthCubit>().createProfile();
        },
        animateOnTap: false,
        child: Text(
          AppLocalizations.of(context)?.createYourProfile ?? '',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
