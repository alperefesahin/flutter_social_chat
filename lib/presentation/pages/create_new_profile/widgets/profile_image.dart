// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';

import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key, required this.authState}) : super(key: key);

  final AuthState authState;

  @override
  Widget build(BuildContext context) {
    final newImage = authState.authUser.userFileImg;
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.height / 6,
            height: size.height / 6,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(80),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: newImage == null
                    ? const AssetImage("assets/images/user.png")
                        as ImageProvider
                    : FileImage(File(newImage.path)),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              final image = ImagePicker().pickImage(
                source: ImageSource.gallery,
                maxHeight: 200,
                maxWidth: 200,
                imageQuality: 100,
              );

              context.read<AuthCubit>().changeUserProfileImage(userFileImg: image);
            },
            icon: const Icon(
              CupertinoIcons.chevron_down_square_fill,
              size: 30,
              color: customIndigoBackgroundColor,
            ),
          )
        ],
      ),
    );
  }
}
