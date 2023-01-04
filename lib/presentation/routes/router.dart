import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/presentation/pages/bottom_tab/bottom_tab.dart';
import 'package:flutter_social_chat/presentation/pages/camera/camera_page.dart';
import 'package:flutter_social_chat/presentation/pages/capture_and_send_photo/capture_and_send_photo_page.dart';
import 'package:flutter_social_chat/presentation/pages/channels/channels_page.dart';
import 'package:flutter_social_chat/presentation/pages/chat/chat_page.dart';
import 'package:flutter_social_chat/presentation/pages/create_new_chat/create_new_chat_page.dart';
import 'package:flutter_social_chat/presentation/pages/landing/landing_page.dart';
import 'package:flutter_social_chat/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter_social_chat/presentation/pages/profile/profile_page.dart';
import 'package:flutter_social_chat/presentation/pages/sign_in/sign_in_page.dart';
import 'package:flutter_social_chat/presentation/pages/verification_page/sign_in_verification_page.dart';
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
        name: "chat_page",
        path: "/chat_page",
        builder: (context, state) {
          final channel = state.extra as Channel?;

          return ChatPage(channel: channel!);
        },
      ),
      GoRoute(
        name: "capture_and_send_photo_page",
        path: "/capture_and_send_photo_page",
        builder: (context, state) {
          final extraParameters = state.extra as Map<String, dynamic>?;

          final pathOfTheTakenPhoto = extraParameters!.entries
              .where((entries) => entries.key == "pathOfTheTakenPhoto")
              .single
              .value as String;

          final sizeOfTheTakenPhoto = extraParameters.entries
              .where((entries) => entries.key == "sizeOfTheTakenPhoto")
              .single
              .value as int;

          return CaptureAndSendPhotoPage(
            pathOfTheTakenPhoto: pathOfTheTakenPhoto,
            sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
          );
        },
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
        builder: (context, state) {
          final extraParameters = state.extra as Map<String, dynamic>?;

          final userListController = extraParameters!.entries
              .where((entries) => entries.key == "userListController")
              .single
              .value as StreamUserListController?;

          final isCreateNewChatPageForCreatingGroup = extraParameters.entries
              .where((entries) => entries.key == "isCreateNewChatPageForCreatingGroup")
              .single
              .value as bool;

          return CreateNewChatPage(
            userListController: userListController!,
            isCreateNewChatPageForCreatingGroup: isCreateNewChatPageForCreatingGroup,
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
