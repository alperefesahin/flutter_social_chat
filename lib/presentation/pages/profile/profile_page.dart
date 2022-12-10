import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/profile_buttons.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/profile_core.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/user_details.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final String userPhoneNumber = state.authUser.phoneNumber;
        final String? userName = state.authUser.userName;
        final String? userPhotoUrl = state.authUser.photoUrl;

        return SafeArea(
          bottom: false,
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ProfileCore(
                        userName: userName!,
                        userPhoneNumber: userPhoneNumber,
                        userPhotoUrl: userPhotoUrl,
                      ),
                      const Divider(thickness: 1, endIndent: 20, indent: 20),
                      const ProfileDetails(),
                      const Divider(thickness: 1, endIndent: 20, indent: 20),
                    ],
                  ),
                  const ProfileButtons(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
