import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../theme/theme.dart';

@immutable
class NativeTabData {
  final String previousPageTitle;
  final Widget title;
  final Widget leading;
  final List<Widget> trailingActions;
  final BottomNavigationBarItem bottomNavBarItem;
  final Widget body;

  const NativeTabData({
    @required this.bottomNavBarItem,
    @required this.body,
    this.previousPageTitle = '',
    this.title,
    this.leading,
    this.trailingActions,
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
// TODO new cupertinoTabChildBuilder
  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      tabController: tabController,
      items: tabsData.map((item) => item.bottomNavBarItem).toList(),
      itemChanged: bottomNavBatItemChanged,
      appBarBuilder: _buildAppBar,
      bodyBuilder: _buildBody,
      materialTabs: (_, __) => MaterialNavBarData(
//        shape: const CircularNotchedRectangle(),
          ),
      cupertinoTabs: (_, __) => CupertinoTabBarData(),
      cupertino: (_, __) => CupertinoTabScaffoldData(
        useCupertinoTabView: false,
        bodyBuilder: _buildBody,
//        tabViewDataBuilder: (_, __) => CupertinoTabViewData(
//        )
      ),
      material: (_, __) => MaterialTabScaffoldData(),
    );
  }

  Widget _buildBody(BuildContext context, int index) {
    return PlatformWidget(
      cupertino: (_, __) => Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top + kCupertinoHeaderHeight,
        ),
        child: tabsData[index].body,
      ),
      material: (_, __) => PageTransitionSwitcher(
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
    return PlatformAppBar(
      title: tabsData[index].title,
      leading: tabsData[index].leading,
      trailingActions: tabsData[index].trailingActions,
      material: (_, __) => MaterialAppBarData(),
      cupertino: (_, __) => CupertinoNavigationBarData(
        transitionBetweenRoutes: false,
        previousPageTitle: tabsData[index].previousPageTitle,
      ),
    );
  }
}
