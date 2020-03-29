import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/core/constants/constants.dart'
    show SupportedLanguages;

part 'preferences_event.freezed.dart';

@freezed
abstract class PreferencesEvent with _$PreferencesEvent {
  const factory PreferencesEvent.languageChanged(
    SupportedLanguages language,
  ) = LanguageChanged;
  const factory PreferencesEvent.themeChanged(
    ThemeMode themeMode,
  ) = ThemeChanged;
}
