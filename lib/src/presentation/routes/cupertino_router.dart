import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import 'package:smarty_duelist/src/presentation/pages/pages.dart'
    show ForgotPasswordPage, HomePage, SignInPage, SignUpPage, SplashPage;

import 'guards/guards.dart';

@CupertinoAutoRouter(generateNavigationHelperExtension: true)
class $CupertinoRouter {
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
  HomePage homePage;
}
