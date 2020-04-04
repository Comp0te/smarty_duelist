import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class NativeAppBar extends PlatformAppBar {
  final String previousPageTitle;

  NativeAppBar({
    this.previousPageTitle = '',
    Widget title,
    Widget leading,
    List<Widget> trailingActions,
  }) : super(
          title: title,
          leading: leading,
          trailingActions: trailingActions,
        );

  @override
  PlatformAppBar build(BuildContext context) {
    return PlatformAppBar(
      title: title,
      leading: leading,
      trailingActions: trailingActions,
      android: (_) => MaterialAppBarData(),
      ios: (_) => CupertinoNavigationBarData(
        transitionBetweenRoutes: true,
        previousPageTitle: previousPageTitle,
      ),
    );
  }
}
