import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/pages/create_new_profile/constants/texts.dart';

class UsernameFormField extends StatelessWidget {
  const UsernameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'Username',
            ),
            autocorrect: false,
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
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {
              context.read<AuthCubit>().createProfile();
            },
            child: const Text(createYourProfile),
          ),
        ],
      ),
    );
  }
}
