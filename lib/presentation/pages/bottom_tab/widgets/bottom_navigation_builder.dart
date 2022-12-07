import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/pages/bottom_tab/constants/texts.dart';

Widget bottomNavigationBuilder(BuildContext _, TabsRouter tabsRouter) {
  return BottomNavigationBar(
    backgroundColor: kiwiBackColor,
    currentIndex: tabsRouter.activeIndex,
    selectedItemColor: bottomNavBarSelectedItemColor,
    onTap: tabsRouter.setActiveIndex,
    items: const [
      BottomNavigationBarItem(
        label: chats,
        icon: Icon(CupertinoIcons.chat_bubble_2, size: 30),
      ),
      BottomNavigationBarItem(
        label: camera,
        icon: Icon(CupertinoIcons.camera, size: 30),
      ),
      BottomNavigationBarItem(
        label: profile,
        icon: Icon(CupertinoIcons.person, size: 30),
      ),
    ],
  );
}
