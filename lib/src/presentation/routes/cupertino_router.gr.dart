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
import 'package:smarty_duelist/src/presentation/pages/forgot_password_page/forgot_password_page.dart';
import 'package:smarty_duelist/src/presentation/pages/main_bottom_tabs_page/main_bottom_tabs_page.dart';
import 'package:smarty_duelist/src/presentation/routes/guards/aurh_guard.dart';
import 'package:smarty_duelist/src/presentation/pages/image_editor_modal/image_editor_modal.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const signUpPage = '/sign-up-page';
  static const forgotPasswordPage = '/forgot-password-page';
  static const mainBottomTabsPage = '/main-bottom-tabs-page';
  static const imageEditorModal = '/image-editor-modal';
}

class CupertinoRouter extends RouterBase {
  @override
  Map<String, List<Type>> get guardedRoutes => {
        Routes.mainBottomTabsPage: [AuthGuard],
      };

  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<CupertinoRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return CupertinoPageRoute<dynamic>(
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
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SignUpPage().wrappedRoute,
          settings: settings,
        );
      case Routes.forgotPasswordPage:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => ForgotPasswordPage().wrappedRoute,
          settings: settings,
        );
      case Routes.mainBottomTabsPage:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              MainBottomTabsPage().wrappedRoute,
          settings: settings,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          transitionDuration: const Duration(milliseconds: 500),
        );
      case Routes.imageEditorModal:
        if (hasInvalidArgs<ImageEditorModalArguments>(args)) {
          return misTypedArgsRoute<ImageEditorModalArguments>(args);
        }
        final typedArgs =
            args as ImageEditorModalArguments ?? ImageEditorModalArguments();
        return CupertinoPageRoute<dynamic>(
          builder: (_) =>
              ImageEditorModal(key: typedArgs.key, url: typedArgs.url)
                  .wrappedRoute,
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ImageEditorModal arguments holder class
class ImageEditorModalArguments {
  final Key key;
  final String url;
  ImageEditorModalArguments({this.key, this.url});
}

//**************************************************************************
// Navigation helper methods extension
//***************************************************************************

extension CupertinoRouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);
  Future pushSignInPage() => pushNamed(Routes.signInPage);
  Future pushSignUpPage() => pushNamed(Routes.signUpPage);
  Future pushForgotPasswordPage() => pushNamed(Routes.forgotPasswordPage);
  Future pushMainBottomTabsPage() => pushNamed(Routes.mainBottomTabsPage);
  Future pushImageEditorModal({
    Key key,
    String url,
  }) =>
      pushNamed(Routes.imageEditorModal,
          arguments: ImageEditorModalArguments(key: key, url: url));
}
