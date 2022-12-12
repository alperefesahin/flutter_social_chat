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
  final PhoneNumberSignInCubit phoneNumberSignInCubit;

  AppRouter({required this.authCubit, required this.phoneNumberSignInCubit});

  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  final BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [botToastNavigatorObserver],
    initialLocation: "/",
/*     redirect: (context, state) {
      final isSubLocCorrect = state.subloc == '/sign_in_verification_page';
      final isUserLoggedIn = authCubit.state.isUserLoggedIn;
      final isThereFailureError = phoneNumberSignInCubit.state.failureMessageOption.isSome();

/*     final isChatUserConnected = chatSetupCubit.state.isChatUserConnected; */

      print("${phoneNumberSignInCubit.stream.first.then((value) => value)}");
      print("x: ${phoneNumberSignInCubit.state.failureMessageOption}");

      if (!isUserLoggedIn && !isThereFailureError) {
        return isSubLocCorrect ? null : "/sign_in_page";
      }
      if (isThereFailureError) {
        return "/sign_in_page";
      }
      if (isUserLoggedIn) {
        return "/channels_page";
      }
      return null;
    }, 
    refreshListenable: GoRouterRefreshStream(authCubit.stream, phoneNumberSignInCubit.stream), */
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LandingPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BottomTabPage(child: child);
        },
        routes: [
          GoRoute(
            name: "channels_page",
            path: '/channels_page',
            builder: (context, state) {
              return const ChannelsPage();
            },
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'chat_page',
                builder: (context, state) {
                  final channel = state.extra as Channel?;

                  return ChatPage(channel: channel!);
                },
              ),
            ],
          ),
          GoRoute(
            name: 'camera_page',
            path: '/camera_page',
            builder: (context, state) => const CameraPage(),
          ),
          GoRoute(
            name: 'profile_page',
            path: '/profile_page',
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),
      GoRoute(
        name: "sign_in_page",
        path: '/sign_in_page',
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        name: "sign_in_verification_page",
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
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> firstStream, Stream<dynamic> secondStream) {
    notifyListeners();
    _subscriptionOne = firstStream.asBroadcastStream().listen((dynamic _) => notifyListeners());
    _subscriptionTwo = secondStream.asBroadcastStream().listen((dynamic _) => notifyListeners());
  }
  late final StreamSubscription<dynamic> _subscriptionOne;
  late final StreamSubscription<dynamic> _subscriptionTwo;

  @override
  void dispose() {
    _subscriptionOne.cancel();
    _subscriptionTwo.cancel();

    super.dispose();
  }
}
