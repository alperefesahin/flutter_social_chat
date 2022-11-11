import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/chat/chat_setup/chat_setup_cubit.dart';

import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {
  late final _listController = StreamChannelListController(
    client: StreamChat.of(context).client,
    filter: Filter.in_(
      'members',
      [StreamChat.of(context).currentUser!.id],
    ),
    channelStateSort: const [SortOption('last_message_at')],
    limit: 20,
  );

  late final StreamUserListController _userListController =
      StreamUserListController(
    client: StreamChat.of(context).client,
    limit: 25,
    filter: Filter.and(
      [Filter.notEqual('id', StreamChat.of(context).currentUser!.id)],
    ),
    sort: [
      const SortOption('name', direction: 1),
    ],
  );

  @override
  void dispose() {
    _listController.dispose();
    super.dispose();
  }

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
      child: BlocProvider(
        create: (context) => getIt<ChatSetupCubit>(),
        child: BlocListener<ChatSetupCubit, ChatSetupState>(
          listenWhen: (p, c) => p.isChatUserConnected != c.isChatUserConnected,
          listener: (context, state) {
            if (state.isChatUserConnected) {
              context.router.replace(const BottomTabRoute());
            } else {
              context.router.popUntilRoot();
            }
          },
          child: WillPopScope(
            onWillPop: () => Future<bool>.value(false),
            child: AutoTabsScaffold(
              routes: [
                ChannelsRoute(
                  streamChannelListController: _listController,
                  userListController: _userListController,
                ),
                const GroupsRoute(),
                const ProfileRoute(),
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
        ),
      ),
    );
  }
}
