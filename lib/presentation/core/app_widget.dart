import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/application/connectivity/connectivity_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/routes/router.dart';
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
        )
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
          // With the connectivity_plus: ^3.0.2 package and version, there is a bug about connection.
          // Sometimes it returns no connection although there is.
          // So, implemented, but waiting for the package updates. Implementation is totally correct.
          listenWhen: (p, c) {
            return p.isUserConnectedToTheInternet != c.isUserConnectedToTheInternet &&
                !c.isUserConnectedToTheInternet;
          },
          listener: (context, state) {
            if (!state.isUserConnectedToTheInternet) {
              BotToast.showText(
                text: "Connection Failed",
                duration: const Duration(days: 365),
              );
            } else if (state.isUserConnectedToTheInternet) {
              BotToast.removeAll();
            }
          },
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.router,
            builder: (context, child) {
              final client = getIt<StreamChatClient>();

              child = StreamChat(
                client: client,
                child: child,
              );
              child = botToastBuilder(context, child);

              return child;
            },
          ),
        ),
      ),
    );
  }
}
