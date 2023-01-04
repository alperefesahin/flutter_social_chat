import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth/auth_management/auth_management_cubit.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text_field.dart';

class UsernameFormField extends StatelessWidget {
  const UsernameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height / 8,
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: CustomTextField(
          onChanged: (userName) => context.read<AuthCubit>().changeUserName(userName: userName),
          validator: (userName) {
            if (userName!.length > 20) {
              context.read<AuthManagementCubit>().validateUserName(isUserNameValid: false);
              return AppLocalizations.of(context).userNameCanNotBeLongerThanTwentyCharacters;
            } else if (userName.length < 3) {
              context.read<AuthManagementCubit>().validateUserName(isUserNameValid: false);
              return AppLocalizations.of(context).userNameCanNotBeShorterThanThreeCharacters;
            }
            context.read<AuthManagementCubit>().validateUserName(isUserNameValid: true);
            return null;
          },
          icon: Icons.person,
          labelText: AppLocalizations.of(context).username,
          hintText: AppLocalizations.of(context).tellUsWhatsYourName,
        ),
      ),
    );
  }
}
