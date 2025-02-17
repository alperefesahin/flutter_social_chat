import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_social_chat/application/auth_management/auth_management_cubit.dart';
import 'package:flutter_social_chat/view/sms_verification/cubit/auth_cubit.dart';
import 'package:flutter_social_chat/view/sign_in/cubit/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/application/connectivity/connectivity_cubit.dart';
import 'package:flutter_social_chat/application/connectivity/connectivity_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/di/dependency_injector.dart';
import 'package:flutter_social_chat/presentation/routes/router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    final botToastBuilder = BotToastInit();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt<AuthManagementCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ConnectivityCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<PhoneNumberSignInCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ChatManagementCubit>()..reset(),
        ),
      ],
      child: Listener(
        onPointerUp: (_) {
          if (Platform.isIOS) {
            final FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          }
        },
        child: BlocListener<ConnectivityCubit, ConnectivityState>(
          listener: (context, state) {
            if (!state.isUserConnectedToTheInternet) {
              BotToast.showText(
                text: 'Connection Failed!',
                duration: const Duration(days: 365),
              );
            } else if (state.isUserConnectedToTheInternet) {
              BotToast.cleanAll();
            }
          },
          child: MaterialApp.router(
            theme: ThemeData(
              textSelectionTheme: const TextSelectionThemeData(
                cursorColor: customIndigoColor,
                selectionColor: customIndigoColor,
                selectionHandleColor: customIndigoColor,
              ),
            ),
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.router,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: (context, child) {
              final client = getIt<StreamChatClient>();

              child = StreamChat(client: client, child: child);
              child = botToastBuilder(context, child);

              return child;
            },
          ),
        ),
      ),
    );
  }
}
