import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../routes/routes.dart';
import '../../localisation/localisation.dart';
import '../../shared_widgets/shared_widgets.dart'
    show NativeTabData, NativeTabScaffold;
import 'blocs/blocs.dart';

class MainBottomTabsPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<MainBottomTabsBloc>(
        create: (_) => getIt<MainBottomTabsBloc>(),
        child: this,
      );
// TODO Fix ios theme when inherit from system
  @override
  Widget build(BuildContext context) {
    final mainBottomTamsBloc = BlocProvider.of<MainBottomTabsBloc>(context);

    return NativeTabScaffold(
      tabController: mainBottomTamsBloc.tabController,
      bottomNavBatItemChanged: (index) {
        mainBottomTamsBloc.add(
          NavigateToTab(context, MainBottomTabs.values[index]),
        );
      },
      tabsData: <NativeTabData>[
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).home),
            title: Text(MainBottomTabs.home.getLabel(context)),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          navigator: ExtendedNavigator<HomeRouter>(
            router: HomeRouter(),
            key: mainBottomTamsBloc.navigationKeys[MainBottomTabs.home],
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).conversationBubble),
            title: Text(MainBottomTabs.messages.getLabel(context)),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          navigator: ExtendedNavigator<MessageRouter>(
            router: MessageRouter(),
            key: mainBottomTamsBloc.navigationKeys[MainBottomTabs.messages],
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).gameController),
            title: Text(MainBottomTabs.game.getLabel(context)),
            backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
          ),
          navigator: ExtendedNavigator<GameRouter>(
            router: GameRouter(),
            key: mainBottomTamsBloc.navigationKeys[MainBottomTabs.game],
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).shoppingCart),
            title: Text(MainBottomTabs.shop.getLabel(context)),
            backgroundColor: Theme.of(context).errorColor,
          ),
          navigator: ExtendedNavigator<ShopRouter>(
            router: ShopRouter(),
            key: mainBottomTamsBloc.navigationKeys[MainBottomTabs.shop],
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).person),
            title: Text(MainBottomTabs.profile.getLabel(context)),
            backgroundColor: Theme.of(context).primaryColorLight,
          ),
          navigator: ExtendedNavigator<ProfileRouter>(
            router: ProfileRouter(),
            guards: [AuthGuard()],
            key: mainBottomTamsBloc.navigationKeys[MainBottomTabs.profile],
          ),
        ),
      ],
    );
  }
}
