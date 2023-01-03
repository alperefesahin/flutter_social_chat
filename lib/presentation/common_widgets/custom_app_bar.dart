import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.minFontSize,
    required this.maxFontSize,
    required this.textPadding,
    required this.centerTitle,
    this.appBarAction,
    this.appBarBackgroundColor,
    this.appBarIconColor,
    this.appBarTitleTextStyle,
    this.actionsOnPressed,
    this.shadowColor,
    this.leadingWidth,
    this.leading,
  }) : preferredSize = const Size.fromHeight(70.0);

  @override
  final Size preferredSize;
  final bool centerTitle;
  final String appBarTitle;
  final IconData? appBarAction;
  final Color? appBarBackgroundColor;
  final Color? appBarIconColor;
  final Color? shadowColor;
  final double minFontSize;
  final double maxFontSize;
  final double? leadingWidth;
  final Widget? leading;
  final TextStyle? appBarTitleTextStyle;
  final EdgeInsetsGeometry textPadding;
  final Function()? actionsOnPressed;

  @override
  Widget build(BuildContext context) {
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return AppBar(
      centerTitle: centerTitle,
      backgroundColor: appBarBackgroundColor ?? scaffoldBackgroundColor,
      toolbarHeight: 80,
      elevation: 0,
      shadowColor: shadowColor ?? transparentColor,
      title: Padding(
        padding: textPadding,
        child: AutoSizeText(
          appBarTitle,
          minFontSize: minFontSize,
          maxFontSize: maxFontSize,
          maxLines: 1,
        ),
      ),
      titleTextStyle: appBarTitleTextStyle,
      leadingWidth: leadingWidth ?? 90,
      leading: leading,
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
