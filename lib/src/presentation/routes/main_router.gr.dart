// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_in_page/sign_in_page.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_up_page/sign_up_page.dart';

class MainRouter {
  static const signInPage = '/';
  static const signUpPage = '/sign-up-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case MainRouter.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage().wrappedRoute,
          settings: settings,
        );
      case MainRouter.signUpPage:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SignUpPage().wrappedRoute,
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
