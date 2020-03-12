import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import 'presentation/presentation.dart'
    show
        MainRouter,
        darkMaterialTheme,
        getCupertinoThemeData,
        lightMaterialTheme;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: MainRouter.onGenerateRoute,
      navigatorKey: MainRouter.navigator.key,
      initialRoute: MainRouter.signInPage,
      ios: (_) => CupertinoAppData(
        theme: getCupertinoThemeData(Brightness.light),
      ),
      android: (_) => MaterialAppData(
        theme: lightMaterialTheme,
        darkTheme: darkMaterialTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
