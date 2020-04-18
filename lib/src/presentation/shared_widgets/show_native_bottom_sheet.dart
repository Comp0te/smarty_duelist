import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../theme/theme.dart';
import 'native_dialog_action.dart';

class SelectorItem<T> {
  final String key;
  final String label;
  final T value;
  final bool isDestructive;
  final ValueChanged<T> onSelect;
  final bool isPopOnSelect;

  SelectorItem({
    @required this.label,
    this.key,
    this.value,
    this.isDestructive = false,
    this.onSelect,
    this.isPopOnSelect = true,
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

  VoidCallback _onPress(BuildContext context, SelectorItem<T> item) {
    return () {
      if (item.onSelect != null) item.onSelect(item.value);

      if (item.isPopOnSelect) ExtendedNavigator.of(context).pop(item);
    };
  }

  return showPlatformModalSheet<SelectorItem<T>>(
    context: context,
    builder: (context) => PlatformWidget(
      ios: (_) => CupertinoActionSheet(
        title: Text(title),
        message: message != null ? Text(message) : null,
        actions: actions.map((item) {
          return CupertinoActionSheetAction(
            isDestructiveAction: item.isDestructive,
            onPressed: _onPress(context, item),
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
            padding: context.defaultPaddingHorizontal.copyWith(
              top: 10,
              bottom: 10,
            ),
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
              onPress: _onPress(context, item),
              child: _buildChild(context, item),
            );
          }).toList(),
        ],
      ),
    ),
  );
}
