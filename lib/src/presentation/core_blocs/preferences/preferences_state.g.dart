// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreferencesState _$_$_PreferencesStateFromJson(Map<String, dynamic> json) {
  return _$_PreferencesState(
    language:
        _$enumDecodeNullable(_$SupportedLanguagesEnumMap, json['language']) ??
            SupportedLanguages.en,
    themeMode: _$enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
        ThemeMode.system,
  );
}

Map<String, dynamic> _$_$_PreferencesStateToJson(
        _$_PreferencesState instance) =>
    <String, dynamic>{
      'language': _$SupportedLanguagesEnumMap[instance.language],
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SupportedLanguagesEnumMap = {
  SupportedLanguages.en: 'en',
  SupportedLanguages.ru: 'ru',
  SupportedLanguages.ua: 'ua',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
