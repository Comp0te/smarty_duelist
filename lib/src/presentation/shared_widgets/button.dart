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
      disabledColor: Theme.of(context).disabledColor.withOpacity(0.1),
      color: _getPrimaryColor(context),
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
        decoration: _getDecoration(context),
        child: _getContent(context),
      ),
    );
  }

  Color _getPrimaryColor(BuildContext context) {
    return color ?? Theme.of(context).primaryColor;
  }

  Widget _getContent(BuildContext context) {
    if (isLoading) return Spinner(color: _getPrimaryColor(context));

    return PlatformText(
      title,
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.center,
      style: Theme.of(context).primaryTextTheme.button.copyWith(
            color: isOutlined ? _getPrimaryColor(context) : null,
          ),
    );
  }

  BoxDecoration _getDecoration(BuildContext context) {
    if (isOutlined) {
      return BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
          color: _getPrimaryColor(context),
          width: 1,
        ),
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
