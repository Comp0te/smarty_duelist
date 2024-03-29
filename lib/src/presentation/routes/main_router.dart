import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import 'guards/guards.dart';
import '../pages/pages.dart'
    show
        ForgotPasswordPage,
        MainBottomTabsPage,
        SignInPage,
        SignUpPage,
        SplashPage;

@AdaptiveAutoRouter(generateNavigationHelperExtension: true)
class $MainRouter {
  @initial
  SplashPage splashPage;

  // Auth routes
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 500,
  )
  SignInPage signInPage;
  SignUpPage signUpPage;
  ForgotPasswordPage forgotPasswordPage;

  // App routes
  @GuardedBy([AuthGuard])
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 500,
  )
  MainBottomTabsPage mainBottomTabsPage;
}
