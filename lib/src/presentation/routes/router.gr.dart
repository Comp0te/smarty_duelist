// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_in/sign_in_page.dart';

class Router {
  static const signInPage = '/';
  static const signInPagDialog = '/sign-in-pag-dialog';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage().wrappedRoute,
          settings: settings,
        );
      case Router.signInPagDialog:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SignInPage().wrappedRoute,
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
