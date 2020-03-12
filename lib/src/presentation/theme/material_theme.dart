import 'package:flutter/material.dart';

final textTypography = Typography(
  englishLike: Typography.englishLike2018,
  tall: Typography.tall2018,
  dense: Typography.dense2018,
);

const _primaryColor = Color(0xFFad1457);
const _primaryColorLight = Color(0xFFe35183);
const _primaryColorDark = Color(0xFF78002e);
const _primaryVariantColor = Color(0xFF78002e);
const _secondaryColor = Color(0xFFb39ddb);
const _lightBackgroundColor = Color(0xffeceff1);
const _darkBackgroundColor = Color(0xff263238);
const _errorColor = Color(0xffcf6679);

const lightColorScheme = ColorScheme.light(
  primary: _primaryColor,
  primaryVariant: _primaryVariantColor,
  secondary: _secondaryColor,
  secondaryVariant: Color(0xFF836fa9),
  error: _errorColor,
  surface: _lightBackgroundColor,
  background: _lightBackgroundColor,
  onPrimary: _lightBackgroundColor,
  onSecondary: _darkBackgroundColor,
  onSurface: _darkBackgroundColor,
  onBackground: _darkBackgroundColor,
  onError: _lightBackgroundColor,
  brightness: Brightness.light,
);
const darkColorScheme = ColorScheme.dark(
  primary: _primaryColor,
  primaryVariant: _primaryVariantColor,
  secondary: _secondaryColor,
  secondaryVariant: Color(0xFFb39ddb),
  surface: _darkBackgroundColor,
  background: _darkBackgroundColor,
  error: _errorColor,
  onPrimary: _darkBackgroundColor,
  onSecondary: _darkBackgroundColor,
  onSurface: _lightBackgroundColor,
  onBackground: _lightBackgroundColor,
  onError: _darkBackgroundColor,
  brightness: Brightness.dark,
);

final lightMaterialTheme = ThemeData.from(
  colorScheme: lightColorScheme,
  textTheme: textTypography.englishLike,
).copyWith(
  primaryColorLight: _primaryColorLight,
  primaryColorDark: _primaryColorDark,
  buttonTheme: const ButtonThemeData(
    colorScheme: lightColorScheme,
    textTheme: ButtonTextTheme.primary,
  ),
);

final darkMaterialTheme = ThemeData.from(
  colorScheme: darkColorScheme,
  textTheme: textTypography.englishLike,
).copyWith(
  primaryColorLight: _primaryColorLight,
  primaryColorDark: _primaryColorDark,
  buttonTheme: const ButtonThemeData(
    colorScheme: darkColorScheme,
    textTheme: ButtonTextTheme.accent,
  ),
);
