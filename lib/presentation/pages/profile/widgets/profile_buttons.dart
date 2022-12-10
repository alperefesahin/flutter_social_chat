import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/custom_profile_button.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: size.width,
      height: size.height / 3,
      decoration: const BoxDecoration(
        color: kiwiBackColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          CustomProfileButton(
            icon: Icons.exit_to_app,
            text: "Sign Out",
            onTap: () {
              context.read<AuthCubit>().signOut();
              context.read<PhoneNumberSignInCubit>().reset();
            },
          ),
          CustomProfileButton(
            icon: Icons.ac_unit,
            text: "Other Button",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
