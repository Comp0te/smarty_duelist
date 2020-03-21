import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import 'presentation/presentation.dart'
    show
        AuthGuard,
        CupertinoRouter,
        MaterialRouter,
        darkMaterialTheme,
        getCupertinoThemeData,
        lightMaterialTheme;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      ios: (_) => CupertinoAppData(
        theme: getCupertinoThemeData(Brightness.light),
        builder: ExtendedNavigator<CupertinoRouter>(
          router: CupertinoRouter(),
          guards: [AuthGuard()],
        ),
      ),
      android: (_) => MaterialAppData(
        builder: ExtendedNavigator<MaterialRouter>(
          router: MaterialRouter(),
          guards: [AuthGuard()],
        ),
        theme: lightMaterialTheme,
        darkTheme: darkMaterialTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
