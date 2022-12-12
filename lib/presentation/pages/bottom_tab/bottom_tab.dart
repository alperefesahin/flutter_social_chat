import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/chat/chat_setup/chat_setup_cubit.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:flutter_production_app/presentation/pages/bottom_tab/widgets/bottom_navigation_builder.dart';

class BottomTabPage extends StatelessWidget {
  const BottomTabPage({super.key, this.child});
  static Page page() => const MaterialPage<void>(child: BottomTabPage());

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn,
      listener: (context, state) {
        //Todo:
        /*   if (state.isUserLoggedIn) {
          context.router.replace(const BottomTabRoute());
        } else {
          context.router.popUntilRoot();
        } */
      },
      child: BlocProvider(
        create: (context) => getIt<ChatSetupCubit>(),
        child: BlocListener<ChatSetupCubit, ChatSetupState>(
          listenWhen: (p, c) => p.isChatUserConnected != c.isChatUserConnected,
          listener: (context, state) {
            //Todo:
            /*  if (state.isChatUserConnected) {
              context.router.replace(const BottomTabRoute());
            } else {
              context.router.popUntilRoot();
            } */
          },
          child: WillPopScope(
            onWillPop: () => Future<bool>.value(false),
            child: Scaffold(
              body: child,
              bottomNavigationBar: bottomNavigationBuilder(context),
            ),
          ),
        ),
      ),
    );
  }
}
