import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/view/sms_verification/cubit/auth_cubit.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_text.dart';

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
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.exit_to_app, size: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CustomText(text: 'Sign Out', fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
