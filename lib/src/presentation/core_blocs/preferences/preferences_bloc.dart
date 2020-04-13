import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/core/constants/constants.dart'
    show SupportedLanguages;

part 'preferences_bloc.freezed.dart';
part 'preferences_bloc.g.dart';

@injectable
class PreferencesBloc extends HydratedBloc<PreferencesEvent, PreferencesState> {
  @override
  PreferencesState get initialState {
    return super.initialState ?? const PreferencesState();
  }

  @override
  Stream<PreferencesState> mapEventToState(PreferencesEvent event) async* {
    yield* event.map(
      themeChanged: (event) async* {
        yield state.copyWith.call(themeMode: event.themeMode);
      },
      languageChanged: (event) async* {
        yield state.copyWith.call(language: event.language);
      },
    );
  }

  @override
  PreferencesState fromJson(Map<String, dynamic> json) {
    try {
      return PreferencesState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(PreferencesState state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }
}

@freezed
abstract class PreferencesEvent with _$PreferencesEvent {
  const factory PreferencesEvent.languageChanged(
    SupportedLanguages language,
  ) = LanguageChanged;
  const factory PreferencesEvent.themeChanged(
    ThemeMode themeMode,
  ) = ThemeChanged;
}

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

  Locale get locale => this != null
      ? Locale.fromSubtags(languageCode: describeEnum(language))
      : null;
}
