import 'package:auto_route/auto_route_annotations.dart';

import '../../pages/pages.dart' show MessagesTab;

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routesClassName: 'MessagesTabRoutes',
)
class $MessageRouter {
  @initial
  MessagesTab messageHome;
}
