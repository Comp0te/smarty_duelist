import 'package:flutter/material.dart';

import 'package:smarty_duelist/generated/l10n.dart';

extension ThemeModeX on ThemeMode {
  String getLabel(BuildContext context) {
    switch (this) {
      case ThemeMode.light:
        return S.of(context).themeLight;
      case ThemeMode.dark:
        return S.of(context).themeDark;
      case ThemeMode.system:
      default:
        return S.of(context).themeSystem;
    }
  }
}
