import 'package:flutter/material.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import 'presentation/routes/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: MainRouter.onGenerateRoute,
      navigatorKey: MainRouter.navigator.key,
      initialRoute: MainRouter.signInPage,
    );
  }
}
