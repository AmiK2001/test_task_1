import 'package:auth_task/core/extensions/context_extension.dart';
import 'package:auth_task/core/extensions/textstyle_extension.dart';
import 'package:auth_task/ui/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CupertinoNestedScaffold extends StatefulWidget {
  const CupertinoNestedScaffold({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  State<CupertinoNestedScaffold> createState() =>
      _CupertinoNestedScaffoldState();
}

class _CupertinoNestedScaffoldState extends State<CupertinoNestedScaffold> {
  final tabs = [
    (
      const BottomNavigationBarItem(
        icon: Icon(Icons.feed_outlined),
        label: "Лента",
      ),
      null,
    ),
    (
      const BottomNavigationBarItem(
        icon: Icon(Icons.map_outlined),
        label: "Карта",
      ),
      null,
    ),
    (
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border_outlined),
        label: "Избранные",
      ),
      null,
    ),
    (
      const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined),
        label: "Профиль",
      ),
      "/home${ProfilePage.route}",
    ),
  ];

  void onTap(BuildContext context, int index) {
    final route = tabs.map((it) => it.$2).toList()[index];

    if (route != null) {
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      key: widget.key,
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Профиль",
          style: context.textTheme.bodyMedium!.w500!.copyWith(
            fontSize: 15,
          ),
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: 3,
          onTap: (index) => onTap(context, index),
          items: tabs.map((it) => it.$1).toList(),
        ),
        tabBuilder: (context, index) => widget.navigationShell,
      ),
    );
  }
}
