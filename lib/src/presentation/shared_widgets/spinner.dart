import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

enum SpinnerMode { inner, standalone }

class Spinner extends StatelessWidget {
  final SpinnerMode spinnerMode;
  final Color color;

  const Spinner({
    this.spinnerMode = SpinnerMode.inner,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    switch (spinnerMode) {
      case SpinnerMode.standalone:
        return Center(
          child: SizedBox(
            height: 50,
            width: 50,
            child: _buildSpinner(context, 20),
          ),
        );
      case SpinnerMode.inner:
      default:
        return SizedBox(
          width: 25,
          height: 25,
          child: _buildSpinner(context),
        );
    }
  }

  Widget _buildSpinner(BuildContext context, [double size]) {
    return PlatformCircularProgressIndicator(
      ios: (_) => CupertinoProgressIndicatorData(radius: size),
      android: (_) => MaterialProgressIndicatorData(
        strokeWidth: 2,
        backgroundColor: color ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
