import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension BuildContextTheme on BuildContext {
  Color get primaryColor {
    if (Platform.isIOS) {
      return CupertinoTheme.of(this).primaryColor;
    }

    return Theme.of(this).primaryColor;
  }

  Color get scaffoldBackgroundColor {
    if (Platform.isIOS) {
      return CupertinoTheme.of(this).scaffoldBackgroundColor;
    }

    return Theme.of(this).scaffoldBackgroundColor;
  }

  Brightness get brightness {
    if (Platform.isIOS) {
      return CupertinoTheme.of(this).brightness;
    }

    return Theme.of(this).brightness;
  }

  Color get errorColor {
    if (Platform.isIOS) {
      return CupertinoColors.systemRed;
    }

    return Theme.of(this).errorColor;
  }

  TextStyle get errorTextStyle {
    if (Platform.isIOS) {
      return CupertinoTheme.of(this).textTheme.textStyle.copyWith(
            color: errorColor,
          );
    }

    return Theme.of(this).textTheme.body1.copyWith(
          color: errorColor,
        );
  }

  double get defaultPaddingHorizontal => 16.0;
}
