import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class NativeScaffold extends StatelessWidget {
  final Widget title;
  final String previousPageTitle;
  final Widget leading;
  final List<Widget> trailingActions;
  final Widget body;
  final int currentTabBarIndex;
  final List<BottomNavigationBarItem> bottomNavBatItems;
  final ValueChanged<int> bottomNavBatItemChanged;

  const NativeScaffold({
    @required this.body,
    this.title,
    this.previousPageTitle = '',
    this.leading,
    this.trailingActions,
    this.currentTabBarIndex,
    this.bottomNavBatItems,
    this.bottomNavBatItemChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      ios: (_) => CupertinoPageScaffoldData(),
      android: (_) => MaterialScaffoldData(),
      body: body,
      appBar: _buildAppBar(),
      bottomNavBar: _buildBottomNavBar(),
    );
  }

  PlatformAppBar _buildAppBar() {
    return PlatformAppBar(
      title: title,
      leading: leading,
      trailingActions: trailingActions,
      android: (_) => MaterialAppBarData(),
      ios: (_) => CupertinoNavigationBarData(
        transitionBetweenRoutes: true,
        previousPageTitle: previousPageTitle,
      ),
    );
  }

  PlatformNavBar _buildBottomNavBar() {
    if (bottomNavBatItems == null) return null;

    return PlatformNavBar(
      android: (_) => MaterialNavBarData(),
      ios: (_) => CupertinoTabBarData(),
      currentIndex: currentTabBarIndex,
      items: bottomNavBatItems,
      itemChanged: bottomNavBatItemChanged,
    );
  }
}
