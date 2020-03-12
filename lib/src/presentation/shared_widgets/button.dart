import 'dart:io';

import 'package:flutter/cupertino.dart';
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
  final Gradient gradient;

  const Button({
    Key key,
    @required this.title,
    this.onPress,
    this.isLoading = false,
    this.color,
    this.height = 44,
    this.iosOutlined = false,
    this.gradient,
  }) : super(key: key);

  bool get isOutlined =>
      iosOutlined && Platform.isIOS && !isLoading && onPress != null;
  BorderRadius get borderRadius => BorderRadius.circular(16);

  @override
  Widget build(BuildContext context) {
    return PlatformButton(
      onPressed: isLoading ? null : onPress,
      padding: const EdgeInsets.all(0),
      android: (_) => MaterialRaisedButtonData(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        color: color,
        textTheme: ButtonTextTheme.primary,
      ),
      ios: (_) => CupertinoButtonData(
        minSize: 44,
        color: iosOutlined
            ? null
            : color ?? CupertinoTheme.of(context).primaryColor,
        borderRadius: borderRadius,
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        width: double.infinity,
        height: height,
        decoration: _getDecoration(context),
        child: _getContent(context),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    if (isLoading) return const Spinner();

    return PlatformText(
      title,
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.center,
    );
  }

  BoxDecoration _getDecoration(BuildContext context) {
    if (isOutlined) {
      return BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
            width: 1, color: CupertinoTheme.of(context).primaryColor),
      );
    }

    if (gradient != null) {
      return BoxDecoration(
        borderRadius: borderRadius,
        gradient: gradient,
      );
    }

    return null;
  }
}
