import 'package:flutter/material.dart';

class PopScopeScaffold extends StatelessWidget {
  const PopScopeScaffold({
    Key? key,
    this.bottomNavigationBar,
    this.body,
    this.floatingActionButton,
    this.appBar,
    this.backgroundColor,
  }) : super(key: key);

  final Widget? bottomNavigationBar;
  final Widget? body;
  final Widget? floatingActionButton;

  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (context, result) {},
      child: Scaffold(
        bottomNavigationBar: bottomNavigationBar,
        body: body,
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
