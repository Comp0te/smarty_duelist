import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'shared_widgets.dart' show Spinner;

class Button extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final bool isLoading;
  final Color color;
  final double height;
  final bool iosOutlined;

  const Button({
    Key key,
    @required this.title,
    this.onPress,
    this.isLoading = true,
    this.color,
    this.height = 44,
    this.iosOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOutlined =
        iosOutlined && Platform.isIOS && !isLoading && onPress != null;
    final borderRadius = BorderRadius.circular(16);
    final primaryColor = color ?? Theme.of(context).primaryColor;

    return PlatformButton(
      onPressed: isLoading ? null : onPress,
      padding: const EdgeInsets.all(0),
      disabledColor: Theme.of(context).disabledColor.withOpacity(0.1),
      color: primaryColor,
      android: (_) => MaterialRaisedButtonData(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      ios: (_) => CupertinoButtonData(
        minSize: 44,
        color: iosOutlined ? Theme.of(context).backgroundColor : null,
        borderRadius: borderRadius,
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        width: double.infinity,
        height: height,
        decoration: isOutlined
            ? BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                  color: primaryColor,
                  width: 1,
                ))
            : null,
        child: isLoading
            ? Spinner(color: primaryColor)
            : PlatformText(
                title,
                maxLines: 1,
                softWrap: false,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.button.copyWith(
                      color: isOutlined ? primaryColor : null,
                    ),
              ),
      ),
    );
  }
}
