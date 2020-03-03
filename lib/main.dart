import 'package:flutter/material.dart';

import 'package:smarty_duelist/src/presentation/index.dart' show Router;
import 'package:smarty_duelist/src/injector.dart' show configureInjector;

import 'generated/l10n.dart';

void main() {
  configureInjector();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigator.key,
      initialRoute: Router.signInPage,
    );
  }
}
