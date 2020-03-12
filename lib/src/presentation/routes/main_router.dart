import 'package:auto_route/auto_route_annotations.dart';

import 'package:smarty_duelist/src/presentation/pages/pages.dart';

@MaterialAutoRouter()
class $MainRouter {
  @initial
  SignInPage signInPage;
}
