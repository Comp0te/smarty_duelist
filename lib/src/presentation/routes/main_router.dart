import 'package:auto_route/auto_route_annotations.dart';

import 'package:smarty_duelist/src/presentation/pages/pages.dart'
    show SignInPage, SignUpPage;

@MaterialAutoRouter()
class $MainRouter {
  @initial
  SignInPage signInPage;
  @CupertinoRoute(fullscreenDialog: true)
  SignUpPage signUpPage;
}
