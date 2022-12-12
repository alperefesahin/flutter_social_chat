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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i14;

import '../../application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i13;
import '../pages/bottom_tab/bottom_tab.dart' as _i2;
import '../pages/camera/camera_page.dart' as _i9;
import '../pages/channels/channels_page.dart' as _i8;
import '../pages/chat/chat_page.dart' as _i5;
import '../pages/create_new_chat/create_new_chat_page.dart' as _i6;
import '../pages/landing/landing_page.dart' as _i1;
import '../pages/onboarding/onboarding_page.dart' as _i7;
import '../pages/profile/profile_page.dart' as _i10;
import '../pages/sign_in/sign_in_page.dart' as _i3;
import '../pages/verification_page/sign_in_verification_page.dart' as _i4;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
      );
    },
    BottomTabRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BottomTabPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInPage(),
      );
    },
    SignInVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<SignInVerificationRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SignInVerificationPage(
          key: args.key,
          state: args.state,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ChatPage(
          key: args.key,
          channel: args.channel,
        ),
      );
    },
    CreateNewChatRoute.name: (routeData) {
      final args = routeData.argsAs<CreateNewChatRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.CreateNewChatPage(
          key: args.key,
          userListController: args.userListController,
          isCreateNewChatPageForCreatingGroup:
              args.isCreateNewChatPageForCreatingGroup,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.OnboardingPage(),
      );
    },
    ChannelsRoute.name: (routeData) {
      final args = routeData.argsAs<ChannelsRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ChannelsPage(
          key: args.key,
          streamChannelListController: args.streamChannelListController,
          userListController: args.userListController,
        ),
      );
    },
    CameraRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CameraPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          BottomTabRoute.name,
          path: '/bottom-tab-page',
          children: [
            _i11.RouteConfig(
              ChannelsRoute.name,
              path: 'channels-page',
              parent: BottomTabRoute.name,
            ),
            _i11.RouteConfig(
              CameraRoute.name,
              path: 'camera-page',
              parent: BottomTabRoute.name,
            ),
            _i11.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: BottomTabRoute.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i11.RouteConfig(
          SignInVerificationRoute.name,
          path: '/sign-in-verification-page',
        ),
        _i11.RouteConfig(
          ChatRoute.name,
          path: '/chat-page',
        ),
        _i11.RouteConfig(
          CreateNewChatRoute.name,
          path: '/create-new-chat-page',
        ),
        _i11.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i11.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.BottomTabPage]
class BottomTabRoute extends _i11.PageRouteInfo<void> {
  const BottomTabRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BottomTabRoute.name,
          path: '/bottom-tab-page',
          initialChildren: children,
        );

  static const String name = 'BottomTabRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignInVerificationPage]
class SignInVerificationRoute
    extends _i11.PageRouteInfo<SignInVerificationRouteArgs> {
  SignInVerificationRoute({
    _i12.Key? key,
    required _i13.PhoneNumberSignInState state,
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

  final _i12.Key? key;

  final _i13.PhoneNumberSignInState state;

  @override
  String toString() {
    return 'SignInVerificationRouteArgs{key: $key, state: $state}';
  }
}

/// generated route for
/// [_i5.ChatPage]
class ChatRoute extends _i11.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i12.Key? key,
    required _i14.Channel channel,
  }) : super(
          ChatRoute.name,
          path: '/chat-page',
          args: ChatRouteArgs(
            key: key,
            channel: channel,
          ),
        );

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.channel,
  });

  final _i12.Key? key;

  final _i14.Channel channel;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, channel: $channel}';
  }
}

/// generated route for
/// [_i6.CreateNewChatPage]
class CreateNewChatRoute extends _i11.PageRouteInfo<CreateNewChatRouteArgs> {
  CreateNewChatRoute({
    _i12.Key? key,
    required _i14.StreamUserListController userListController,
    bool? isCreateNewChatPageForCreatingGroup,
  }) : super(
          CreateNewChatRoute.name,
          path: '/create-new-chat-page',
          args: CreateNewChatRouteArgs(
            key: key,
            userListController: userListController,
            isCreateNewChatPageForCreatingGroup:
                isCreateNewChatPageForCreatingGroup,
          ),
        );

  static const String name = 'CreateNewChatRoute';
}

class CreateNewChatRouteArgs {
  const CreateNewChatRouteArgs({
    this.key,
    required this.userListController,
    this.isCreateNewChatPageForCreatingGroup,
  });

  final _i12.Key? key;

  final _i14.StreamUserListController userListController;

  final bool? isCreateNewChatPageForCreatingGroup;

  @override
  String toString() {
    return 'CreateNewChatRouteArgs{key: $key, userListController: $userListController, isCreateNewChatPageForCreatingGroup: $isCreateNewChatPageForCreatingGroup}';
  }
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i11.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i8.ChannelsPage]
class ChannelsRoute extends _i11.PageRouteInfo<ChannelsRouteArgs> {
  ChannelsRoute({
    _i12.Key? key,
    required _i14.StreamChannelListController streamChannelListController,
    required _i14.StreamUserListController userListController,
  }) : super(
          ChannelsRoute.name,
          path: 'channels-page',
          args: ChannelsRouteArgs(
            key: key,
            streamChannelListController: streamChannelListController,
            userListController: userListController,
          ),
        );

  static const String name = 'ChannelsRoute';
}

class ChannelsRouteArgs {
  const ChannelsRouteArgs({
    this.key,
    required this.streamChannelListController,
    required this.userListController,
  });

  final _i12.Key? key;

  final _i14.StreamChannelListController streamChannelListController;

  final _i14.StreamUserListController userListController;

  @override
  String toString() {
    return 'ChannelsRouteArgs{key: $key, streamChannelListController: $streamChannelListController, userListController: $userListController}';
  }
}

/// generated route for
/// [_i9.CameraPage]
class CameraRoute extends _i11.PageRouteInfo<void> {
  const CameraRoute()
      : super(
          CameraRoute.name,
          path: 'camera-page',
        );

  static const String name = 'CameraRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
