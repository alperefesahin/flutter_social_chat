import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/application/chat/chat_setup/chat_setup_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/pages/profile/constants/texts.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/profile_core.dart';
import 'package:flutter_production_app/presentation/pages/profile/widgets/user_details.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatSetupCubit, ChatSetupState>(
      builder: (context, chatSetupState) {
        if (chatSetupState.isChatUserConnected) {
          return BlocConsumer<AuthCubit, AuthState>(
            listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn,
            listener: (context, state) {
              if (!state.isLoggedIn) {
                context.go(context.namedLocation("sign_in_page"));
              }
            },
            builder: (context, authState) {
              final String? userName = authState.authUser.userName;
              final String? userPhotoUrl = authState.authUser.photoUrl;
              final String userPhoneNumber = authState.authUser.phoneNumber;

              final String? userRole = chatSetupState.chatUser.userRole;
              final String createdAt = chatSetupState.chatUser.createdAt;
              final bool isUserBannedStatus = chatSetupState.chatUser.isUserBanned!;

              return Scaffold(
                appBar: CustomAppBar(
                  appBarTitle: profilePage,
                  appBarTitleTextStyle:
                      const TextStyle(color: kiwiColor, fontWeight: FontWeight.w700),
                  appBarAction: Icons.exit_to_app,
                  actionsOnPressed: () {
                    context.read<AuthCubit>().signOut();
                    context.read<PhoneNumberSignInCubit>().reset();
                  },
                  appBarBackgroundColor: kiwiBackColor,
                  appBarIconColor: kiwiColor,
                ),
                body: Center(
                  child: Column(
                    children: [
                      ProfileCore(
                        userName: userName!,
                        userPhoneNumber: userPhoneNumber,
                        userPhotoUrl: userPhotoUrl!,
                      ),
                      const Divider(thickness: 1, endIndent: 20, indent: 20),
                      ProfileDetails(
                        createdAt: createdAt,
                        userRole: userRole!,
                        isUserBannedStatus: isUserBannedStatus,
                      ),
                      const Divider(thickness: 1, endIndent: 20, indent: 20),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return const Scaffold(
            body: CustomProgressIndicator(progressIndicatorColor: blackColor),
          );
        }
      },
    );
  }
}
