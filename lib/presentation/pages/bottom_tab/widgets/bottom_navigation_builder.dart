import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/pages/bottom_tab/constants/texts.dart';

Widget bottomNavigationBuilder(BuildContext _, TabsRouter tabsRouter) {
  return BottomNavigationBar(
    currentIndex: tabsRouter.activeIndex,
    onTap: tabsRouter.setActiveIndex,
    items: const [
      BottomNavigationBarItem(
        label: chats,
        icon: Icon(CupertinoIcons.chat_bubble_2),
      ),
      BottomNavigationBarItem(
        label: groups,
        icon: Icon(CupertinoIcons.person_3),
      ),
      BottomNavigationBarItem(
        label: profile,
        icon: Icon(CupertinoIcons.person),
      ),
    ],
  );
}
