import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import 'package:smarty_duelist/src/presentation/pages/pages.dart'
    show
        ForgotPasswordPage,
        MainBottomTabsPage,
        SignInPage,
        SignUpPage,
        SplashPage;

import 'guards/guards.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $MaterialRouter {
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
