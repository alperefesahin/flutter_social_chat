import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text_field.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/constants/texts.dart';

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
              context.read<AuthCubit>().validateUserName(isUserNameValid: false);
              return userNameCanNotBeLongerThanTenCharacters;
            } else if (userName.length < 3) {
              context.read<AuthCubit>().validateUserName(isUserNameValid: false);
              return userNameCanNotBeShorterThanThreeCharacters;
            }
            context.read<AuthCubit>().validateUserName(isUserNameValid: true);
            return null;
          },
          icon: Icons.person,
          labelText: "Username",
          hintText: "Tell us, what's your name?",
        ),
      ),
    );
  }
}
