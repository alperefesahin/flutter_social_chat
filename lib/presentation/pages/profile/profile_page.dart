import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';
import 'package:flutter_social_chat/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_social_chat/presentation/pages/profile/widgets/custom_profile_button.dart';
import 'package:flutter_social_chat/presentation/pages/profile/widgets/profile_core.dart';
import 'package:flutter_social_chat/presentation/pages/profile/widgets/user_details.dart';
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
              final String userId = authState.authUser.id.replaceRange(8, 25, "*****");
              final String userPhoneNumber = authState.authUser.phoneNumber;

              final String userRole = chatSetupState.chatUser.userRole;
              final String createdAt = chatSetupState.chatUser.createdAt;
              final bool isUserBannedStatus = chatSetupState.chatUser.isUserBanned;

              return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  right: 15,
                                  left: 15,
                                  bottom: 100,
                                ),
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: MediaQuery.of(context).size.height / 2.8,
                                    maxWidth: MediaQuery.of(context).size.width,
                                  ),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/flutter.png",
                                      ),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              ProfileCore(
                                userName: userName!,
                                userPhoneNumber: userPhoneNumber,
                                userPhotoUrl: userPhotoUrl!,
                                userId: userId,
                              ),
                            ],
                          ),
                          ProfileDetails(
                            createdAt: createdAt,
                            userRole: userRole,
                            isUserBannedStatus: isUserBannedStatus,
                          ),
                        ],
                      ),
                      const CustomProfileButton(),
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
