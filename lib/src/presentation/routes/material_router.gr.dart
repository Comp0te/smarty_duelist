// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:smarty_duelist/src/presentation/pages/splash_page/splash_page.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_in_page/sign_in_page.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:smarty_duelist/src/presentation/pages/home-page/home_page.dart';
import 'package:smarty_duelist/src/presentation/routes/guards/aurh_guard.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const signUpPage = '/sign-up-page';
  static const homePage = '/home-page';
}

class MaterialRouter extends RouterBase {
  @override
  Map<String, List<Type>> get guardedRoutes => {
        Routes.homePage: [AuthGuard],
      };

  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<MaterialRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              SignInPage().wrappedRoute,
          settings: settings,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          transitionDuration: const Duration(milliseconds: 500),
        );
      case Routes.signUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignUpPage().wrappedRoute,
          settings: settings,
        );
      case Routes.homePage:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (ctx, animation, secondaryAnimation) => HomePage(),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          transitionDuration: const Duration(milliseconds: 500),
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
  Future pushSplashPage() => pushNamed(Routes.splashPage);
  Future pushSignInPage() => pushNamed(Routes.signInPage);
  Future pushSignUpPage() => pushNamed(Routes.signUpPage);
  Future pushHomePage() => pushNamed(Routes.homePage);
}
