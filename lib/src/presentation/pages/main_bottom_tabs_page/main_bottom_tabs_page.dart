import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;
import 'package:smarty_duelist/src/presentation/routes/routes.dart';

import '../profile_tab/profile_tab.dart';
import '../../shared_widgets/shared_widgets.dart'
    show
        LanguageButton,
        NativeAppBar,
        NativeTabData,
        NativeTabScaffold,
        ThemeButton;
import 'blocs/blocs.dart';
import '../../localisation/localisation.dart';

class MainBottomTabsPage extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<MainBottomTabsBloc>(
        create: (_) => getIt<MainBottomTabsBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return NativeTabScaffold(
      tabController: BlocProvider.of<MainBottomTabsBloc>(context).tabController,
      tabsData: <NativeTabData>[
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).home),
            title: Text(MainBottomTabs.home.getLabel(context)),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Center(
            child: Text(MainBottomTabs.home.getLabel(context)),
          ),
          appBar: NativeAppBar(
            title: Text(MainBottomTabs.home.getLabel(context)),
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).conversationBubble),
            title: Text(MainBottomTabs.messages.getLabel(context)),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          body: Center(
            child: Text(MainBottomTabs.messages.getLabel(context)),
          ),
          appBar: NativeAppBar(
            title: Text(MainBottomTabs.messages.getLabel(context)),
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).gameController),
            title: Text(MainBottomTabs.game.getLabel(context)),
            backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
          ),
          body: Center(
            child: Text(MainBottomTabs.game.getLabel(context)),
          ),
          appBar: NativeAppBar(
            title: Text(MainBottomTabs.game.getLabel(context)),
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).shoppingCart),
            title: Text(MainBottomTabs.shop.getLabel(context)),
            backgroundColor: Theme.of(context).errorColor,
          ),
          body: Center(
            child: Text(MainBottomTabs.shop.getLabel(context)),
          ),
          appBar: NativeAppBar(
            title: Text(MainBottomTabs.shop.getLabel(context)),
          ),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).person),
            title: Text(MainBottomTabs.profile.getLabel(context)),
            backgroundColor: Theme.of(context).primaryColorLight,
          ),
          body: const ProfileTab(),
          appBar: NativeAppBar(
            title: Text(MainBottomTabs.profile.getLabel(context)),
            trailingActions: const <Widget>[
              LanguageButton(),
              ThemeButton(),
            ],
          ),
        ),
      ],
    );
  }
}
