import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

//import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;
import 'package:smarty_duelist/src/presentation/shared_widgets/native_app_bar.dart';

import '../../shared_widgets/shared_widgets.dart'
    show Button, NativeTabData, NativeTabScaffold;
import 'blocs/blocs.dart';

class MainBottomTabsPage extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<SignOutBloc>(
        create: (_) => getIt<SignOutBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return NativeTabScaffold(
      tabController: BlocProvider.of<SignOutBloc>(context).tabController,
      tabsData: <NativeTabData>[
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).home),
            title: const Text('Home'),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: const Center(child: Text('Home')),
          appBar: NativeAppBar(),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).conversationBubble),
            title: const Text('Messages'),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          body: const Center(child: Text('Messages')),
          appBar: NativeAppBar(),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).gameController),
            title: const Text('Game'),
            backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
          ),
          body: const Center(child: Text('Game')),
          appBar: NativeAppBar(),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).shoppingCart),
            title: const Text('Shop'),
            backgroundColor: Theme.of(context).errorColor,
          ),
          body: const Center(child: Text('Shop')),
          appBar: NativeAppBar(),
        ),
        NativeTabData(
          bottomNavBarItem: BottomNavigationBarItem(
            icon: Icon(PlatformIcons(context).person),
            title: const Text('Profile'),
            backgroundColor: Theme.of(context).primaryColorLight,
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  child: Button(
                    // temporary
                    title: 'logout',
                    onPress: () {
                      BlocProvider.of<SignOutBloc>(context).add(const SignOut());
                    },
                  ),
                )
              ],
            ),
          ),
          appBar: NativeAppBar(),
        ),
      ],
    );
  }
}
