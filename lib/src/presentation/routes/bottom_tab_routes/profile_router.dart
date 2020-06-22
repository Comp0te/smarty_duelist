import 'package:auto_route/auto_route_annotations.dart';

import '../../pages/pages.dart' show ImageEditorModal, ProfileTab;
import '../routes.dart';

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routesClassName: 'ProfileTabRoutes',
)
class $ProfileRouter {
  @GuardedBy([AuthGuard])
  @initial
  ProfileTab profileHome;

  @AdaptiveRoute(fullscreenDialog: true)
  ImageEditorModal imageEditorModal;
}
