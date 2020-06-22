import 'package:auto_route/auto_route_annotations.dart';

import '../../pages/pages.dart' show HomeTab;

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routesClassName: 'HomeTabRoutes',
)
class $HomeRouter {
  @initial
  HomeTab home;
}
