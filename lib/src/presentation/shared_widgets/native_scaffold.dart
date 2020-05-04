import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../theme/theme.dart';

class NativeScaffold extends StatelessWidget {
  final Widget title;
  final String previousPageTitle;
  final Widget leading;
  final List<Widget> trailingActions;
  final Widget body;
  final bool withKeyboardAnimation;

  const NativeScaffold({
    @required this.body,
    this.title,
    this.previousPageTitle = '',
    this.leading,
    this.trailingActions,
    this.withKeyboardAnimation = false,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      ios: (_) => CupertinoPageScaffoldData(
        resizeToAvoidBottomInset: !withKeyboardAnimation,
      ),
      android: (_) => MaterialScaffoldData(
        resizeToAvoidBottomInset: !withKeyboardAnimation,
      ),
      body: _getBody(context),
      appBar: _buildAppBar(),
    );
  }

  Widget _getBody(BuildContext context) {
    final mq = MediaQuery.of(context);
    final bottomOffset = mq.viewInsets.bottom + mq.padding.bottom;

    if (!withKeyboardAnimation) {
      return SafeArea(child: body);
    }

    return SafeArea(
      bottom: false,
      child: AnimatedContainer(
        curve: Curves.easeOutQuad,
        duration: const Duration(milliseconds: 375),
        padding: EdgeInsets.only(
          bottom: bottomOffset,
          top: MediaQuery.of(context).viewPadding.top + kCupertinoHeaderHeight,
        ),
        child: body,
      ),
    );
  }

  PlatformAppBar _buildAppBar() {
    if (title == null) return null;

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
