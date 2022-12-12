import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/pages/bottom_tab/bottom_tab.dart';
import 'package:flutter_production_app/presentation/pages/camera/camera_page.dart';
import 'package:flutter_production_app/presentation/pages/channels/channels_page.dart';
import 'package:flutter_production_app/presentation/pages/chat/chat_page.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/create_new_chat_page.dart';
import 'package:flutter_production_app/presentation/pages/landing/landing_page.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter_production_app/presentation/pages/profile/profile_page.dart';
import 'package:flutter_production_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/sign_in_verification_page.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class AppRouter {
  final AuthCubit authCubit;
  AppRouter(this.authCubit);

  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  final BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [botToastNavigatorObserver],
    initialLocation: "/landing_page",
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LandingPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BottomTabPage(key: state.pageKey, child: child);
        },
        routes: [
          GoRoute(
            path: '/channels_page:a',
            builder: (context, state) {
              final streamChannelListController = state.extra as StreamChannelListController?;
              final userListController = state.extra as StreamUserListController?;

              return ChannelsPage(
                key: state.pageKey,
                streamChannelListController: streamChannelListController!,
                userListController: userListController!,
              );
            },
            routes: [
              GoRoute(
                path: '/chat_page',
                builder: (context, state) {
                  final channel = state.extra as Channel?;

                  return ChatPage(channel: channel!);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/camera_page',
            builder: (context, state) => CameraPage(key: state.pageKey),
          ),
          GoRoute(
            path: '/profile_page',
            builder: (context, state) => ProfilePage(key: state.pageKey),
          ),
        ],
      ),
      GoRoute(
        path: '/sign_in_page',
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: '/sign_in_verification_page',
        builder: (context, state) {
          final phoneNumberSignInState = state.extra as PhoneNumberSignInState?;

          return SignInVerificationPage(state: phoneNumberSignInState!);
        },
      ),
      GoRoute(
        path: '/create_new_chat_page',
        builder: (context, state) {
          final userListController = state.extra as StreamUserListController?;

          return CreateNewChatPage(userListController: userListController!);
        },
      ),
      GoRoute(
        path: '/onboarding_page',
        builder: (context, state) => const OnboardingPage(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool isUserLoggedIn = authCubit.state.isUserLoggedIn;
      final bool isOnboardingCompleted = authCubit.state.authUser.isOnboardingCompleted;

      if (isUserLoggedIn && isOnboardingCompleted) {
        return '/${state.pageKey}';
      } else {
        return "/sign_in_page";
      }
    },
    refreshListenable: GoRouterRefreshStream(authCubit.stream),
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((dynamic _) => notifyListeners());
  }
  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
