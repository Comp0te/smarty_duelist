import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

@immutable
class NativeTabData {
  final BottomNavigationBarItem bottomNavBarItem;
  final ExtendedNavigator navigator;

  const NativeTabData({
    @required this.bottomNavBarItem,
    this.navigator,
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
      materialTabs: (_, __) => MaterialNavBarData(
//        shape: const CircularNotchedRectangle(),
          ),
      bodyBuilder: _buildBody,
      cupertinoTabs: (_, __) => CupertinoTabBarData(),
      cupertino: (_, __) => CupertinoTabScaffoldData(
        useCupertinoTabView: false,
      ),
      material: (_, __) => MaterialTabScaffoldData(),
    );
  }

  Widget _buildBody(BuildContext context, int index) {
    return PlatformWidget(
      cupertino: (_, __) => tabsData[index].navigator,
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
        child: WillPopScope(
          onWillPop: () async {
            final navKey = tabsData[index].navigator.key;
            // TODO back button first time pop home route
            if (navKey is GlobalKey<NavigatorState>) {
              final isFirstRouteInCurrentTab = !navKey.currentState.canPop();

              if (isFirstRouteInCurrentTab && index != 0) {
                bottomNavBatItemChanged(0);
                return false;
              }

              return isFirstRouteInCurrentTab;
            }

            debugPrint('$navKey is not a GlobalKey<NavigatorState>');

            return false;
          },
          child: Visibility(
            maintainState: true,
            visible: index == tabController.index(context),
            child: IndexedStack(
              index: index,
              children: tabsData.map((tab) => tab.navigator).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
