// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'preferences_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PreferencesEventTearOff {
  const _$PreferencesEventTearOff();

  LanguageChanged languageChanged(SupportedLanguages language) {
    return LanguageChanged(
      language,
    );
  }

  ThemeChanged themeChanged(ThemeMode themeMode) {
    return ThemeChanged(
      themeMode,
    );
  }
}

// ignore: unused_element
const $PreferencesEvent = _$PreferencesEventTearOff();

mixin _$PreferencesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result languageChanged(SupportedLanguages language),
    @required Result themeChanged(ThemeMode themeMode),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result languageChanged(SupportedLanguages language),
    Result themeChanged(ThemeMode themeMode),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result languageChanged(LanguageChanged value),
    @required Result themeChanged(ThemeChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result languageChanged(LanguageChanged value),
    Result themeChanged(ThemeChanged value),
    @required Result orElse(),
  });
}

abstract class $PreferencesEventCopyWith<$Res> {
  factory $PreferencesEventCopyWith(
          PreferencesEvent value, $Res Function(PreferencesEvent) then) =
      _$PreferencesEventCopyWithImpl<$Res>;
}

class _$PreferencesEventCopyWithImpl<$Res>
    implements $PreferencesEventCopyWith<$Res> {
  _$PreferencesEventCopyWithImpl(this._value, this._then);

  final PreferencesEvent _value;
  // ignore: unused_field
  final $Res Function(PreferencesEvent) _then;
}

abstract class $LanguageChangedCopyWith<$Res> {
  factory $LanguageChangedCopyWith(
          LanguageChanged value, $Res Function(LanguageChanged) then) =
      _$LanguageChangedCopyWithImpl<$Res>;
  $Res call({SupportedLanguages language});
}

class _$LanguageChangedCopyWithImpl<$Res>
    extends _$PreferencesEventCopyWithImpl<$Res>
    implements $LanguageChangedCopyWith<$Res> {
  _$LanguageChangedCopyWithImpl(
      LanguageChanged _value, $Res Function(LanguageChanged) _then)
      : super(_value, (v) => _then(v as LanguageChanged));

  @override
  LanguageChanged get _value => super._value as LanguageChanged;

  @override
  $Res call({
    Object language = freezed,
  }) {
    return _then(LanguageChanged(
      language == freezed ? _value.language : language as SupportedLanguages,
    ));
  }
}

class _$LanguageChanged
    with DiagnosticableTreeMixin
    implements LanguageChanged {
  const _$LanguageChanged(this.language) : assert(language != null);

  @override
  final SupportedLanguages language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreferencesEvent.languageChanged(language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreferencesEvent.languageChanged'))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageChanged &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @override
  $LanguageChangedCopyWith<LanguageChanged> get copyWith =>
      _$LanguageChangedCopyWithImpl<LanguageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result languageChanged(SupportedLanguages language),
    @required Result themeChanged(ThemeMode themeMode),
  }) {
    assert(languageChanged != null);
    assert(themeChanged != null);
    return languageChanged(language);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result languageChanged(SupportedLanguages language),
    Result themeChanged(ThemeMode themeMode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageChanged != null) {
      return languageChanged(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result languageChanged(LanguageChanged value),
    @required Result themeChanged(ThemeChanged value),
  }) {
    assert(languageChanged != null);
    assert(themeChanged != null);
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result languageChanged(LanguageChanged value),
    Result themeChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class LanguageChanged implements PreferencesEvent {
  const factory LanguageChanged(SupportedLanguages language) =
      _$LanguageChanged;

  SupportedLanguages get language;
  $LanguageChangedCopyWith<LanguageChanged> get copyWith;
}

abstract class $ThemeChangedCopyWith<$Res> {
  factory $ThemeChangedCopyWith(
          ThemeChanged value, $Res Function(ThemeChanged) then) =
      _$ThemeChangedCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

class _$ThemeChangedCopyWithImpl<$Res>
    extends _$PreferencesEventCopyWithImpl<$Res>
    implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(
      ThemeChanged _value, $Res Function(ThemeChanged) _then)
      : super(_value, (v) => _then(v as ThemeChanged));

  @override
  ThemeChanged get _value => super._value as ThemeChanged;

  @override
  $Res call({
    Object themeMode = freezed,
  }) {
    return _then(ThemeChanged(
      themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
    ));
  }
}

class _$ThemeChanged with DiagnosticableTreeMixin implements ThemeChanged {
  const _$ThemeChanged(this.themeMode) : assert(themeMode != null);

  @override
  final ThemeMode themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreferencesEvent.themeChanged(themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreferencesEvent.themeChanged'))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThemeChanged &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(themeMode);

  @override
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      _$ThemeChangedCopyWithImpl<ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result languageChanged(SupportedLanguages language),
    @required Result themeChanged(ThemeMode themeMode),
  }) {
    assert(languageChanged != null);
    assert(themeChanged != null);
    return themeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result languageChanged(SupportedLanguages language),
    Result themeChanged(ThemeMode themeMode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeChanged != null) {
      return themeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result languageChanged(LanguageChanged value),
    @required Result themeChanged(ThemeChanged value),
  }) {
    assert(languageChanged != null);
    assert(themeChanged != null);
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result languageChanged(LanguageChanged value),
    Result themeChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class ThemeChanged implements PreferencesEvent {
  const factory ThemeChanged(ThemeMode themeMode) = _$ThemeChanged;

  ThemeMode get themeMode;
  $ThemeChangedCopyWith<ThemeChanged> get copyWith;
}
