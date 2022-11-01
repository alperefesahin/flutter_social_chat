// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i9;

import '../../application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i11;
import '../pages/bottom_tab/bottom_tab.dart' as _i4;
import '../pages/home/home_page.dart' as _i5;
import '../pages/landing/landing_page.dart' as _i1;
import '../pages/profile/profile_page.dart' as _i7;
import '../pages/search/search_page.dart' as _i6;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/verification_page/sign_in_verification_page.dart' as _i3;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    SignInVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<SignInVerificationRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignInVerificationPage(
          key: args.key,
          state: args.state,
        ),
      );
    },
    BottomTabRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.BottomTabPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SearchPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i8.RouteConfig(
          SignInVerificationRoute.name,
          path: '/sign-in-verification-page',
        ),
        _i8.RouteConfig(
          BottomTabRoute.name,
          path: '/bottom-tab-page',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: BottomTabRoute.name,
            ),
            _i8.RouteConfig(
              SearchRoute.name,
              path: 'search-page',
              parent: BottomTabRoute.name,
            ),
            _i8.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: BottomTabRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i8.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignInVerificationPage]
class SignInVerificationRoute
    extends _i8.PageRouteInfo<SignInVerificationRouteArgs> {
  SignInVerificationRoute({
    _i10.Key? key,
    required _i11.PhoneNumberSignInState state,
  }) : super(
          SignInVerificationRoute.name,
          path: '/sign-in-verification-page',
          args: SignInVerificationRouteArgs(
            key: key,
            state: state,
          ),
        );

  static const String name = 'SignInVerificationRoute';
}

class SignInVerificationRouteArgs {
  const SignInVerificationRouteArgs({
    this.key,
    required this.state,
  });

  final _i10.Key? key;

  final _i11.PhoneNumberSignInState state;

  @override
  String toString() {
    return 'SignInVerificationRouteArgs{key: $key, state: $state}';
  }
}

/// generated route for
/// [_i4.BottomTabPage]
class BottomTabRoute extends _i8.PageRouteInfo<void> {
  const BottomTabRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BottomTabRoute.name,
          path: '/bottom-tab-page',
          initialChildren: children,
        );

  static const String name = 'BottomTabRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}