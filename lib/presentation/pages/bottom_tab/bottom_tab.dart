import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';

class BottomTabPage extends StatelessWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          SearchRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(
                  label: 'Search', icon: Icon(CupertinoIcons.search)),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(CupertinoIcons.person)),
            ],
          );
        },
      ),
    );
  }
}
