import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'shared_widgets.dart' show Spinner;

class Button extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final bool isLoading;
  final Color color;
  final EdgeInsets margin;

  const Button({
    Key key,
    this.onPress,
    @required this.title,
    this.isLoading = true,
    this.color,
    this.margin = const EdgeInsets.only(bottom: 25),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      height: 44,
      child: PlatformButton(
        onPressed: isLoading ? null : onPress,
        android: (_) => MaterialRaisedButtonData(
          color: Theme.of(context).primaryColor,
          disabledColor: Theme.of(context).disabledColor.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        ios: (_) => CupertinoButtonData(
          minSize: 44,
          color: Theme.of(context).primaryColor,
          disabledColor: Theme.of(context).disabledColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: isLoading
            ? Center(child: Spinner(color: Theme.of(context).primaryColor))
            : PlatformText(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.button,
              ),
      ),
    );
  }
}
