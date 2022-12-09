// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
import 'package:flutter_production_app/presentation/pages/bottom_tab/bottom_tab.dart';
import 'package:flutter_production_app/presentation/pages/camera/camera_page.dart';
import 'package:flutter_production_app/presentation/pages/channels/channels_page.dart';
import 'package:flutter_production_app/presentation/pages/chat/chat_page.dart';
import 'package:flutter_production_app/presentation/pages/create_new_chat/create_new_chat_page.dart';
import 'package:flutter_production_app/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter_production_app/presentation/pages/landing/landing_page.dart';
import 'package:flutter_production_app/presentation/pages/profile/profile_page.dart';
import 'package:flutter_production_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/sign_in_verification_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: SignInVerificationPage),
    AutoRoute(
      page: BottomTabPage,
      children: [
        AutoRoute(
          page: ChannelsPage,
        ),
        AutoRoute(page: CameraPage),
        AutoRoute(page: ProfilePage),
      ],
    ),
    AutoRoute(page: ChatPage),
    AutoRoute(page: CreateNewChatPage),
    AutoRoute(page: OnboardingPage),
  ],
)
class $AppRouter {}
