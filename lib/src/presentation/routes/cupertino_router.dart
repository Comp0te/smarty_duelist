import 'package:auto_route/auto_route_annotations.dart';

import 'package:smarty_duelist/src/presentation/pages/pages.dart'
    show SignInPage, SignUpPage;

@CupertinoAutoRouter(generateNavigationHelperExtension: true)
class $CupertinoRouter {
  @initial
  SignInPage signInPage;
  SignUpPage signUpPage;
}
