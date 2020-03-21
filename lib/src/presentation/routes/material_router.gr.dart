// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_in_page/sign_in_page.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_up_page/sign_up_page.dart';

abstract class Routes {
  static const signInPage = '/';
  static const signUpPage = '/sign-up-page';
}

class MaterialRouter extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<MaterialRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage().wrappedRoute,
          settings: settings,
        );
      case Routes.signUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignUpPage().wrappedRoute,
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Navigation helper methods extension
//***************************************************************************

extension MaterialRouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSignInPage() => pushNamed(Routes.signInPage);
  Future pushSignUpPage() => pushNamed(Routes.signUpPage);
}
