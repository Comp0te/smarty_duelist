import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../theme/theme.dart';

enum SpinnerMode { inner, standalone }

class Spinner extends StatelessWidget {
  final SpinnerMode spinnerMode;
  final Color color;
  final double progressValue;

  const Spinner({
    this.spinnerMode = SpinnerMode.inner,
    this.color,
    this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    if (progressValue != null) {
      return LinearProgressIndicator(
        value: progressValue,
        backgroundColor: color ?? context.primaryColor,
      );
    }

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
