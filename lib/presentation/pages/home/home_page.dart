import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:flutter_production_app/presentation/pages/home/constants/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            appBarTitle: homePageTitle,
            appBarAction: Icons.exit_to_app,
            actionsOnPressed: () {
              context.read<AuthCubit>().signOut();
              context.read<PhoneNumberSignInCubit>().reset();
            },
            appBarBackgroundColor: customIndigoColor,
            appBarIconColor: whiteColor,
          ),
          body: const Center(
            child: AutoSizeText("Welcome to Home Page"),
          ),
        );
      },
    );
  }
}
