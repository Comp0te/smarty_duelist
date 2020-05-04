import 'package:flutter/cupertino.dart';

const cupertinoPrimaryColor = Color(0xFFad1457);
const cupertinoPrimaryColorDark = Color(0xFFe35183);
const kCupertinoHeaderHeight = 44;

const _background = CupertinoDynamicColor(
  color: Color(0xffeceff1),
  darkColor: Color(0xff263238),
  highContrastColor: Color(0xffeceff1),
  darkHighContrastColor: Color(0xff263238),
  elevatedColor: Color(0xffeceff1),
  darkElevatedColor: Color(0xff424E56),
  highContrastElevatedColor: Color(0xffeceff1),
  darkHighContrastElevatedColor: Color(0xff4A565E),
);

const _primaryColor = CupertinoDynamicColor.withBrightnessAndContrast(
  color: cupertinoPrimaryColor,
  darkColor: cupertinoPrimaryColorDark,
  highContrastColor: Color(0xFF810047),
  darkHighContrastColor: Color(0xFFE37EA6),
);

const _barBackgroundColor = CupertinoDynamicColor.withBrightness(
  color: Color(0xF0E6E9EB),
  darkColor: Color(0xF0434F55),
);

CupertinoThemeData getCupertinoThemeData([Brightness brightness]) {
  return CupertinoThemeData(
    primaryColor: _primaryColor,
    primaryContrastingColor: CupertinoColors.systemBackground,
    barBackgroundColor: _barBackgroundColor,
    scaffoldBackgroundColor: _background,
    brightness: brightness,
  );
}
