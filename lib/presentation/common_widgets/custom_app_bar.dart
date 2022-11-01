import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.appBarTitle,
    required this.appBarAction,
    required this.appBarBackgroundColor,
    required this.appBarIconColor,
    this.appBarLeading,
    this.appBarTitleTextStyle,
    this.leadingOnPressed,
    this.actionsOnPressed,
  })  : preferredSize = const Size.fromHeight(70.0),
        super(key: key);

  @override
  final Size preferredSize;
  final String appBarTitle;
  final IconData? appBarLeading;
  final IconData appBarAction;
  final Color appBarBackgroundColor;
  final Color appBarIconColor;
  final TextStyle? appBarTitleTextStyle;
  final Function()? leadingOnPressed;
  final Function()? actionsOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBackgroundColor,
      toolbarHeight: 80,
      elevation: 0,
      title: AutoSizeText(
        appBarTitle,
        minFontSize: 19,
        maxFontSize: 23,
        maxLines: 1,
      ),
      titleTextStyle: appBarTitleTextStyle,
      leadingWidth: 90,
      leading: IconButton(
        onPressed: leadingOnPressed,
        icon: Icon(
          appBarLeading,
          color: appBarIconColor,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: actionsOnPressed,
            icon: Icon(
              appBarAction,
              size: 28,
              color: appBarIconColor,
            ),
          ),
        )
      ],
    );
  }
}
