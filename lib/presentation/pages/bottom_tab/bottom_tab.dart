import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';

class BottomTabPage extends StatelessWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isUserLoggedIn != c.isUserLoggedIn,
      listener: (context, state) {
        if (state.isUserLoggedIn) {
          context.router.replace(const BottomTabRoute());
        } else {
          context.router.popUntilRoot();
        }
      },
      child: WillPopScope(
        onWillPop: () => Future<bool>.value(false),
        child: AutoTabsScaffold(
          routes: const [
            ChatsRoute(),
            GroupsRoute(),
            ProfileRoute(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(
                  label: 'Chats',
                  icon: Icon(CupertinoIcons.chat_bubble_2),
                ),
                BottomNavigationBarItem(
                  label: 'Groups',
                  icon: Icon(CupertinoIcons.person_3),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(CupertinoIcons.person),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
