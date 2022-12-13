import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
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
import 'package:page_transition/page_transition.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class AppRouter {
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
    routes: [
      GoRoute(
        name: "/",
        path: "/",
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return PageTransition(child: child, type: PageTransitionType.fade).child;
          },
          child: const LandingPage(),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return CustomTransitionPage(
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return PageTransition(child: child, type: PageTransitionType.fade).child;
            },
            child: BottomTabPage(child: child),
          );
        },
        routes: [
          GoRoute(
            name: "channels_page",
            path: '/channels_page',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return PageTransition(child: child, type: PageTransitionType.fade).child;
                },
                child: const ChannelsPage(),
              );
            },
            routes: [
              GoRoute(
                name: "chat_page",
                path: "chat_page",
                pageBuilder: (context, state) {
                  final channel = state.extra as Channel?;

                  return CustomTransitionPage(
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return PageTransition(child: child, type: PageTransitionType.fade).child;
                    },
                    child: ChatPage(channel: channel!),
                  );
                },
              ),
            ],
          ),
          GoRoute(
            name: "camera_page",
            path: "/camera_page",
            pageBuilder: (context, state) => CustomTransitionPage(
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return PageTransition(child: child, type: PageTransitionType.fade).child;
              },
              child: const CameraPage(),
            ),
          ),
          GoRoute(
            name: "profile_page",
            path: "/profile_page",
            pageBuilder: (context, state) => CustomTransitionPage(
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return PageTransition(child: child, type: PageTransitionType.fade).child;
              },
              child: const ProfilePage(),
            ),
          ),
        ],
      ),
      GoRoute(
        name: "sign_in_page",
        path: "/sign_in_page",
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return PageTransition(child: child, type: PageTransitionType.fade).child;
          },
          child: const SignInPage(),
        ),
      ),
      GoRoute(
        name: "sign_in_verification_page",
        path: "/sign_in_verification_page",
        builder: (context, state) {
          final phoneNumberSignInState = state.extra as PhoneNumberSignInState?;

          return SignInVerificationPage(state: phoneNumberSignInState!);
        },
      ),
      GoRoute(
        name: "create_new_chat_page",
        path: "/create_new_chat_page",
        pageBuilder: (context, state) {
          final userListController = state.extra as StreamUserListController?;

          return CustomTransitionPage(
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return PageTransition(child: child, type: PageTransitionType.fade).child;
            },
            child: CreateNewChatPage(userListController: userListController!),
          );
        },
      ),
      GoRoute(
        name: "onboarding_page",
        path: "/onboarding_page",
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return PageTransition(child: child, type: PageTransitionType.fade).child;
          },
          child: const OnboardingPage(),
        ),
      ),
    ],
  );
}
