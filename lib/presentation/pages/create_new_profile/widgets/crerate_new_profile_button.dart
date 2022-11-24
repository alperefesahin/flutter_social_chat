import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/auth/auth_cubit.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/common_widgets/custom_text.dart';

class CreateNewProfileButton extends StatelessWidget {
  const CreateNewProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.7,
      height: 90,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: InkWell(
        hoverColor: transparentColor,
        highlightColor: transparentColor,
        splashColor: transparentColor,
        focusColor: transparentColor,
        onTap: () {
          context.read<AuthCubit>().createProfile();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(CupertinoIcons.plus_app, size: 30, color: customIndigoColor),
            SizedBox(width: 10),
            CustomText(
              text: "createProfileText",
              minFontSize: 21,
              maxFontSize: 25,
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600, color: customIndigoColor),
              textPadding: EdgeInsets.only(),
            ),
          ],
        ),
      ),
    );
  }
}
