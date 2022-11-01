// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
import 'package:flutter_production_app/presentation/pages/home/home_page.dart';
import 'package:flutter_production_app/presentation/pages/landing/landing_page.dart';
import 'package:flutter_production_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:flutter_production_app/presentation/pages/verification_page/sign_in_verification_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInPage),
    AutoRoute(page: SignInVerificationPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: LandingPage, initial: true),
  ],
)
class $AppRouter {}
