import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final String userId = state.authUser.id;
        final String userPhoneNumber = state.authUser.phoneNumber;

        final String? userName = state.authUser.userName;
        final String? userPhotoUrl = state.authUser.photoUrl;

        return Scaffold(
          appBar: CustomAppBar(
            appBarTitle: "Chats Page",
            appBarAction: Icons.exit_to_app,
            actionsOnPressed: () {
              context.read<AuthCubit>().signOut();
              context.read<PhoneNumberSignInCubit>().reset();
            },
            appBarBackgroundColor: customIndigoColor,
            appBarIconColor: whiteColor,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("userid: $userId"),
                Text("users phone number: $userPhoneNumber"),
                Text("user name: $userName"),
                Text("user photo url: $userPhotoUrl"),
              ],
            ),
          ),
        );
      },
    );
  }
}
