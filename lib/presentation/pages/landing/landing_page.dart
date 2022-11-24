import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final bool isUserLoggedIn =
            context.read<AuthCubit>().state.isUserLoggedIn;

        if (isUserLoggedIn) {
          AutoRouter.of(context).replace(const CreateNewProfileRoute());
        } else if (!isUserLoggedIn) {
          AutoRouter.of(context).replace(const SignInRoute());
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
          context.router.navigate(const CreateNewProfileRoute());
        } else {
          context.router.navigate(const SignInRoute());
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
