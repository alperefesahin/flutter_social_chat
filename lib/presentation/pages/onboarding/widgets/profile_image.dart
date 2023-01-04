import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth/auth_management/auth_management_cubit.dart';
import 'package:flutter_social_chat/presentation/common_widgets/colors.dart';

import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.selectedImagePath});
  final String selectedImagePath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.height / 6,
            height: size.height / 6,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(80),
              ),
              border: Border.all(
                color: customIndigoColor.withOpacity(0.5),
                width: 3,
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: selectedImagePath == ""
                    ? const AssetImage("assets/images/user.png") as ImageProvider
                    : FileImage(File(selectedImagePath)),
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

              context.read<AuthManagementCubit>().selectProfileImage(userFileImg: image);
            },
            icon: Icon(
              CupertinoIcons.chevron_down_square_fill,
              size: 30,
              color: customIndigoColor.withBlue(200),
            ),
          )
        ],
      ),
    );
  }
}
