import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import './native_app_bar.dart';

@immutable
class NativeTabData {
  final BottomNavigationBarItem bottomNavBarItem;
  final NativeAppBar appBar;
  final Widget body;

  const NativeTabData({
    @required this.bottomNavBarItem,
    @required this.body,
    this.appBar,
  });
}

class NativeTabScaffold extends StatelessWidget {
  final List<NativeTabData> tabsData;
  final PlatformTabController tabController;
  final ValueChanged<int> bottomNavBatItemChanged;

  const NativeTabScaffold({
    @required this.tabsData,
    this.tabController,
    this.bottomNavBatItemChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      tabController: tabController,
      items: tabsData.map((item) => item.bottomNavBarItem).toList(),
      itemChanged: bottomNavBatItemChanged,
      appBarBuilder: _buildAppBar,
      bodyBuilder: _buildBody,
      androidTabs: (_) => MaterialNavBarData(),
      iosTabs: (_) => CupertinoTabBarData(),
      ios: (_) => CupertinoTabScaffoldData(
        useCupertinoTabView: false,
        bodyBuilder: _buildBody,
//        tabViewDataBuilder: (_, __) => CupertinoTabViewData(
//        )
      ),
      android: (_) => MaterialTabScaffoldData(),
    );
  }

  Widget _buildBody(BuildContext context, int index) {
    return PlatformWidget(
      ios: (_) => tabsData[index].body,
      android: (_) => PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: tabsData[index].body,
      ),
    );
  }

  PlatformAppBar _buildAppBar(BuildContext context, int index) {
    return tabsData[index].appBar;
  }
}
