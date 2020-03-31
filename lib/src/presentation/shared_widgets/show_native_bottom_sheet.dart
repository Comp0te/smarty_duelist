import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import 'native_dialog_action.dart';

class SelectorItem<T> {
  final String key;
  final String label;
  final T value;
  final bool isDestructive;

  SelectorItem({
    @required this.key,
    @required this.label,
    @required this.value,
    this.isDestructive = false,
  });
}

typedef PlatformModalSheetItemBuilder<T> = Widget Function(
  BuildContext context,
  SelectorItem<T> item,
);

Future<SelectorItem<T>> showNativeBottomSheet<T>(
  BuildContext context, {
  @required List<SelectorItem<T>> actions,
  @required String title,
  PlatformModalSheetItemBuilder<T> actionContentBuilder,
  String message,
}) {
  Widget _buildChild(BuildContext context, SelectorItem<T> item) {
    if (actionContentBuilder != null) {
      return actionContentBuilder(context, item);
    }

    return Text(item.label);
  }

  return showPlatformModalSheet<SelectorItem<T>>(
    context: context,
    builder: (context) => PlatformWidget(
      ios: (_) => CupertinoActionSheet(
        title: Text(title),
        message: Text(message),
        actions: actions.map((item) {
          return CupertinoActionSheetAction(
            isDestructiveAction: item.isDestructive,
            onPressed: () {
              ExtendedNavigator.of(context).pop(item);
            },
            child: _buildChild(context, item),
          );
        }).toList(),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            ExtendedNavigator.of(context).pop();
          },
          child: Text(S.of(context).cancel),
        ),
      ),
      android: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(title, style: Theme.of(context).textTheme.title),
          ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Text(message, style: Theme.of(context).textTheme.subtitle),
            ),
          const Divider(),
          ...actions.map((item) {
            return NativeDialogAction(
              isDestructiveAction: item.isDestructive,
              onPress: () {
                ExtendedNavigator.of(context).pop(item);
              },
              child: _buildChild(context, item),
            );
          }).toList(),
        ],
      ),
    ),
  );
}
