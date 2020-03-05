import 'package:flutter/material.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import 'presentation/presentation.dart' show MainRouter, darkTheme, lightTheme;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: MainRouter.onGenerateRoute,
      navigatorKey: MainRouter.navigator.key,
      initialRoute: MainRouter.signInPage,
    );
  }
}
