import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_cubit.dart';
import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_state.dart';
import 'package:flutter_social_chat/core/constants/colors.dart';
import 'package:flutter_social_chat/core/design_system/custom_progress_indicator.dart';
import 'package:flutter_social_chat/core/di/dependency_injector.dart';
import 'package:flutter_social_chat/presentation/pages/bottom_tab/widgets/bottom_navigation_builder.dart';

class BottomTabPage extends StatelessWidget {
  const BottomTabPage({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatSetupCubit>(),
      child: BlocBuilder<ChatSetupCubit, ChatSetupState>(
        buildWhen: (p, c) => p.isChatUserConnected != c.isChatUserConnected && c.isChatUserConnected,
        builder: (context, state) {
          final isUserCheckedFromChatService = state.isUserCheckedFromChatService;

          if (isUserCheckedFromChatService) {
            return PopScope(
              canPop: false,
              onPopInvokedWithResult: (context, result) {},
              child: Scaffold(
                body: child,
                bottomNavigationBar: bottomNavigationBuilder(context),
              ),
            );
          } else {
            return const Scaffold(
              body: CustomProgressIndicator(progressIndicatorColor: blackColor),
            );
          }
        },
      ),
    );
  }
}
