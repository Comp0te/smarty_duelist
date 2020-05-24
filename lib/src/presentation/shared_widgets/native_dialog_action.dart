import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class NativeDialogAction extends StatelessWidget {
  final bool isDefaultAction;
  final bool isDestructiveAction;
  final VoidCallback onPress;
  final String title;
  final Widget child;

  const NativeDialogAction({
    @required this.onPress,
    this.child,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
    this.title,
  }) : assert(title != null || child != null);

  @override
  PlatformDialogAction build(BuildContext context) {
    return PlatformDialogAction(
      onPressed: onPress,
      material: (_, __) => MaterialDialogActionData(
        textColor: isDestructiveAction ? Theme.of(context).errorColor : null,
      ),
      cupertino: (_, __) => CupertinoDialogActionData(
        isDefaultAction: isDefaultAction,
        isDestructiveAction: isDestructiveAction,
      ),
      child: title != null ? PlatformText(title) : child,
    );
  }
}
