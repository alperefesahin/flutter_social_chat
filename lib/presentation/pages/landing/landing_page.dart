import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:go_router/go_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final bool isUserLoggedIn = context.read<AuthCubit>().state.isUserLoggedIn;

        if (isUserLoggedIn) {
          context.go(context.namedLocation("channels_page"));
        } else {
          context.go(context.namedLocation("sign_in_page"));
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isUserLoggedIn != c.isUserLoggedIn,
      listener: (context, state) {
        if (state.isUserLoggedIn) {
          context.go(context.namedLocation("channels_page"));
        } else {
          context.go(context.namedLocation("sign_in_page"));
        }
      },
      child: const Scaffold(
        body: Center(
          child: CustomProgressIndicator(
            progressIndicatorColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
