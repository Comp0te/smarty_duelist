import 'package:auto_route/auto_route_annotations.dart';

import '../../pages/pages.dart' show GameTab;

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routesClassName: 'GameTabRoutes',
)
class $GameRouter {
  @initial
  GameTab gameHome;
}
