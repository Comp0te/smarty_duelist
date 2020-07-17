import 'package:auto_route/auto_route_annotations.dart';

import '../../pages/pages.dart' show ShopTab;

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routesClassName: 'ShopTabRoutes',
)
class $ShopRouter {
  @initial
  ShopTab shopHome;
}
