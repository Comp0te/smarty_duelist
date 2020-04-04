import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// Creates and dispose of a [PlatformTabController].
///
/// See also:
/// - [PlatformTabController]
PlatformTabController usePlatformTabController([int initialIndex = 0]) {
  return Hook.use(_PlatformTabControllerHook(initialIndex));
}

class _PlatformTabControllerHook extends Hook<PlatformTabController> {
  final int initialIndex;

  const _PlatformTabControllerHook(this.initialIndex);

  @override
  _PlatformTabControllerHookState createState() {
    return _PlatformTabControllerHookState();
  }
}

class _PlatformTabControllerHookState
    extends HookState<PlatformTabController, _PlatformTabControllerHook> {
  PlatformTabController _tabController;

  @override
  void initHook() {
    _tabController = PlatformTabController(initialIndex: hook.initialIndex);
  }

  @override
  PlatformTabController build(BuildContext context) => _tabController;

  @override
  void dispose() => _tabController?.dispose();
}
