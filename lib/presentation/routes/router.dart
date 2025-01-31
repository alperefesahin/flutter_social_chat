import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_chat/core/constants/enums/router_enum.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_state.dart';
import 'package:flutter_social_chat/presentation/pages/bottom_tab/bottom_tab.dart';
import 'package:flutter_social_chat/presentation/pages/camera/camera_page.dart';
import 'package:flutter_social_chat/presentation/pages/capture_and_send_photo/capture_and_send_photo_page.dart';
import 'package:flutter_social_chat/presentation/pages/channels/channels_page.dart';
import 'package:flutter_social_chat/presentation/pages/chat/chat_page.dart';
import 'package:flutter_social_chat/presentation/pages/create_new_chat/create_new_chat_page.dart';
import 'package:flutter_social_chat/presentation/pages/landing/landing_page.dart';
import 'package:flutter_social_chat/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter_social_chat/presentation/pages/profile/profile_page.dart';
import 'package:flutter_social_chat/view/sign_in/sign_in_view.dart';
import 'package:flutter_social_chat/view/sms_verification/sms_verification_view.dart';
import 'package:flutter_social_chat/presentation/routes/codec.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

  final BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [botToastNavigatorObserver],
    initialLocation: RouterEnum.initialLocation.routeName,
    routes: [
      GoRoute(
        path: RouterEnum.initialLocation.routeName,
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: const LandingPage(),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return CustomTransitionPage(
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: BottomTabPage(child: child),
              );
            },
            child: BottomTabPage(child: child),
          );
        },
        routes: [
          GoRoute(
            path: RouterEnum.channelsView.routeName,
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: const ChannelsPage(),
              );
            },
          ),
          GoRoute(
            path: RouterEnum.cameraView.routeName,
            pageBuilder: (context, state) => CustomTransitionPage(
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: const CameraPage(),
            ),
          ),
          GoRoute(
            path: RouterEnum.profileView.routeName,
            pageBuilder: (context, state) => CustomTransitionPage(
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: const ProfilePage(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: RouterEnum.chatView.routeName,
        builder: (context, state) {
          final channel = state.extra as Channel?;
          return ChatPage(channel: channel!);
        },
      ),
      GoRoute(
        path: RouterEnum.captureAndSendPhotoView.routeName,
        builder: (context, state) {
          final extraParameters = state.extra as Map<String, dynamic>?;

          final pathOfTheTakenPhoto =
              extraParameters!.entries.where((entries) => entries.key == 'pathOfTheTakenPhoto').single.value as String;

          final sizeOfTheTakenPhoto =
              extraParameters.entries.where((entries) => entries.key == 'sizeOfTheTakenPhoto').single.value as int;

          return CaptureAndSendPhotoPage(
            pathOfTheTakenPhoto: pathOfTheTakenPhoto,
            sizeOfTheTakenPhoto: sizeOfTheTakenPhoto,
          );
        },
      ),
      GoRoute(
        path: RouterEnum.signInView.routeName,
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: const SignInView(),
        ),
      ),
      GoRoute(
        path: RouterEnum.signInVerificationView.routeName,
        builder: (context, state) {
          final String? encodedExtras = state.extra as String?;

          final extras = encodedExtras != null ? PhoneNumberSignInStateCodec.decode(encodedExtras) : {};

          final phoneNumberSignInState = PhoneNumberSignInState(
            phoneNumber: extras['phoneNumber'] ?? '',
            smsCode: extras['smsCode'] ?? '',
            verificationIdOption: Option.of(extras['verificationId'] as String? ?? ''),
            isInProgress: extras['isInProgress'] ?? false,
            isPhoneNumberInputValidated: extras['isPhoneNumberInputValidated'] ?? false,
            phoneNumberAndResendTokenPair: (
              extras['phoneNumberPair'] ?? '',
              extras['resendToken'] as int?,
            ),
          );

          return SmsVerificationView(state: phoneNumberSignInState);
        },
      ),
      GoRoute(
        path: RouterEnum.createNewChatView.routeName,
        builder: (context, state) {
          final extraParameters = state.extra as Map<String, dynamic>?;

          final userListController = extraParameters!.entries
              .where((entries) => entries.key == 'userListController')
              .single
              .value as StreamUserListController?;

          final isCreateNewChatPageForCreatingGroup = extraParameters.entries
              .where((entries) => entries.key == 'isCreateNewChatPageForCreatingGroup')
              .single
              .value as bool;

          return CreateNewChatPage(
            userListController: userListController!,
            isCreateNewChatPageForCreatingGroup: isCreateNewChatPageForCreatingGroup,
          );
        },
      ),
      GoRoute(
        path: RouterEnum.onboardingView.routeName,
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: const OnboardingPage(),
        ),
      ),
    ],
  );
}
