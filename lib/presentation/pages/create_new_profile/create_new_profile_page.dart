import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:flutter_production_app/presentation/pages/create_new_profile/widgets/crerate_new_profile_button.dart';
import 'package:flutter_production_app/presentation/pages/create_new_profile/widgets/profile_image.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';

class CreateNewProfilePage extends StatefulWidget {
  const CreateNewProfilePage({super.key});

  @override
  State<CreateNewProfilePage> createState() => _CreateNewProfilePageState();
}

class _CreateNewProfilePageState extends State<CreateNewProfilePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final bool isOnboardingCompleted =
            context.read<AuthCubit>().state.authUser.isOnboardingCompleted;

        if (isOnboardingCompleted) {
          AutoRouter.of(context).replace(const BottomTabRoute());
        } else if (!isOnboardingCompleted) {
          AutoRouter.of(context).replace(const CreateNewProfileRoute());
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.authUser.isOnboardingCompleted) {
          AutoRouter.of(context).replace(const BottomTabRoute());
        } else if (!state.authUser.isOnboardingCompleted) {
          AutoRouter.of(context).replace(const CreateNewProfileRoute());
        }
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.isInProgress
              ? const Scaffold(
                  body: CustomProgressIndicator(
                    progressIndicatorColor: blackColor,
                  ),
                )
              : WillPopScope(
                  onWillPop: () => Future<bool>.value(false),
                  child: Scaffold(
                    body: Column(
                      children: [
                        ProfileImage(authState: state),
                        TextFormField(
                          validator: (value) {
                            //TODO: Do it with 'form_validator' package (userName)
                          },
                          autocorrect: false,
                          onChanged: (userName) =>
                              context.read<AuthCubit>().changeUserName(userName: userName),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.person),
                            labelText: "User Name",
                          ),
                        ),
                        const CreateNewProfileButton(),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
