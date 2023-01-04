import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_text.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          context.read<AuthCubit>().signOut();
          context.read<PhoneNumberSignInCubit>().reset();
        },
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 2,
            maxHeight: MediaQuery.of(context).size.height / 6.5,
            minHeight: MediaQuery.of(context).size.height / 12,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            border: Border.all(
              color: customGreyColor400,
              width: 4,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Icon(Icons.exit_to_app, size: 30),
                CustomText(
                  text: "Sign Out",
                  minFontSize: 17,
                  maxFontSize: 20,
                  textPadding: EdgeInsets.only(left: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
