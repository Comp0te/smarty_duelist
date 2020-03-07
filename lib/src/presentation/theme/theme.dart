import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TargetPlatform getTargetPlatform() {
  if (Platform.isIOS) return TargetPlatform.iOS;
  if (Platform.isAndroid) return TargetPlatform.android;
  if (Platform.isFuchsia) return TargetPlatform.fuchsia;

  return null;
}

final textTypography = Typography(
  platform: getTargetPlatform(),
  englishLike: Typography.englishLike2018,
  tall: Typography.tall2018,
  dense: Typography.dense2018,
);

const lightColorScheme = ColorScheme.light(
  primary: Color(0xFFad1457),
  primaryVariant: Color(0xFF78002e),
  secondary: Color(0xFFb39ddb),
  secondaryVariant: Color(0xFF836fa9),
  error: Color(0xffd50000),
  surface: Color(0xffeceff1),
  background: Color(0xffeceff1),
  onPrimary: Color(0xffeceff1),
  onSecondary: Color(0xff263238),
  onSurface: Color(0xff263238),
  onBackground: Color(0xff263238),
  onError: Color(0xffeceff1),
  brightness: Brightness.light,
);
const darkColorScheme = ColorScheme.dark(
  primary: Color(0xFFad1457),
  primaryVariant: Color(0xFF78002e),
  secondary: Color(0xFFb39ddb),
  secondaryVariant: Color(0xFFb39ddb),
  surface: Color(0xff263238),
  background: Color(0xff263238),
  error: Color(0xffcf6679),
  onPrimary: Color(0xffeceff1),
  onSecondary: Color(0xff263238),
  onSurface: Color(0xffeceff1),
  onBackground: Color(0xffeceff1),
  onError: Color(0xff263238),
  brightness: Brightness.dark,
);

final lightTheme = ThemeData.from(
  colorScheme: lightColorScheme,
  textTheme: textTypography.englishLike,
).copyWith(
  primaryColorLight: const Color(0xFFe35183),
  primaryColorDark: const Color(0xFF78002e),
);

final darkTheme = ThemeData.from(
  colorScheme: darkColorScheme,
  textTheme: textTypography.englishLike,
).copyWith(
  primaryColorLight: const Color(0xFFe35183),
  primaryColorDark: const Color(0xFF78002e),
);
