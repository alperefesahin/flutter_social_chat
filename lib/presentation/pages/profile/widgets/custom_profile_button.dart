import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<AuthCubit>().signOut();
        context.read<PhoneNumberSignInCubit>().reset();
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 60,
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
    );
  }
}
