import 'package:auto_route/auto_route_annotations.dart';

import 'package:smarty_duelist/src/presentation/pages/index.dart'
    show SignInPage;

@MaterialAutoRouter()
class $Router {
  @initial
  SignInPage signInPage;

  @CupertinoRoute(fullscreenDialog: true)
  SignInPage signInPagDialog;
}
