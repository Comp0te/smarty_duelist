import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/core/constants/constants.dart'
    show SupportedLanguages;

part 'preferences_state.freezed.dart';
part 'preferences_state.g.dart';

@freezed
abstract class PreferencesState with _$PreferencesState {
  const factory PreferencesState({
    @Default(SupportedLanguages.en) SupportedLanguages language,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _PreferencesState;

  factory PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$PreferencesStateFromJson(json);
}

extension PreferencesStateX on PreferencesState {
  Brightness get brightness {
    if (this != null) {
      switch (themeMode) {
        case ThemeMode.light:
          return Brightness.light;
        case ThemeMode.dark:
          return Brightness.dark;
        case ThemeMode.system:
        default:
          return null;
      }
    } else {
      return null;
    }
  }

  Locale get locale => this != null ? Locale(describeEnum(language)) : null;
}
