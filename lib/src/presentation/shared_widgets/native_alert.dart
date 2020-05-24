import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'native_dialog_action.dart';

class NativeAlert extends StatelessWidget {
  final String title;
  final Widget content;
  final List<NativeDialogAction> actions;

  const NativeAlert({
    @required this.title,
    @required this.content,
    @required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformAlertDialog(
      title: Text(title),
      content: content,
      cupertino: (_, __) => CupertinoAlertDialogData(),
      material: (_, __) => MaterialAlertDialogData(),
      actions: actions,
    );
  }
}
