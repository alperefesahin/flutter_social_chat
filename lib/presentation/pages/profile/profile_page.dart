import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      buildWhen: (p, c) => p.chatUser != c.chatUser,
      builder: (context, state) {
        final String userId = state.chatUser.id;
        final String userPhoneNumber = state.chatUser.phoneNumber;
        final String userNameAndSurname = state.chatUser.name;
        final String userPhotoUrl = state.chatUser.image;

        final DateTime usersAccountCreatedTime = state.chatUser.createdAt!;
        final DateTime lastActiveTimeOfTheUser = state.chatUser.lastActive!;

        final int numberOfGroupsThatUserInvolved = state.chatUser.teams.length;
        final int totalUnreadCountOfTheUsersChat =
            state.chatUser.totalUnreadCount;

        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("userid: $userId"),
                Text("users phone number: $userPhoneNumber"),
                Text("user name: $userNameAndSurname"),
                Text("users photo's url: $userPhotoUrl"),
                Text("Created time: $usersAccountCreatedTime"),
                Text("Last Active: : $lastActiveTimeOfTheUser"),
                Text(
                    "Number of groups that user involved: : $numberOfGroupsThatUserInvolved"),
                Text("Total unread count: $totalUnreadCountOfTheUsersChat"),
              ],
            ),
          ),
        );
      },
    );
  }
}
