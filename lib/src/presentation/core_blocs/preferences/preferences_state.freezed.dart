// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PreferencesState _$PreferencesStateFromJson(Map<String, dynamic> json) {
  return _PreferencesState.fromJson(json);
}

class _$PreferencesStateTearOff {
  const _$PreferencesStateTearOff();

  _PreferencesState call(
      {SupportedLanguages language = SupportedLanguages.en,
      ThemeMode themeMode = ThemeMode.system}) {
    return _PreferencesState(
      language: language,
      themeMode: themeMode,
    );
  }
}

// ignore: unused_element
const $PreferencesState = _$PreferencesStateTearOff();

mixin _$PreferencesState {
  SupportedLanguages get language;
  ThemeMode get themeMode;

  Map<String, dynamic> toJson();
  $PreferencesStateCopyWith<PreferencesState> get copyWith;
}

abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
          PreferencesState value, $Res Function(PreferencesState) then) =
      _$PreferencesStateCopyWithImpl<$Res>;
  $Res call({SupportedLanguages language, ThemeMode themeMode});
}

class _$PreferencesStateCopyWithImpl<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  final PreferencesState _value;
  // ignore: unused_field
  final $Res Function(PreferencesState) _then;

  @override
  $Res call({
    Object language = freezed,
    Object themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language as SupportedLanguages,
      themeMode:
          themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
    ));
  }
}

abstract class _$PreferencesStateCopyWith<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  factory _$PreferencesStateCopyWith(
          _PreferencesState value, $Res Function(_PreferencesState) then) =
      __$PreferencesStateCopyWithImpl<$Res>;
  @override
  $Res call({SupportedLanguages language, ThemeMode themeMode});
}

class __$PreferencesStateCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res>
    implements _$PreferencesStateCopyWith<$Res> {
  __$PreferencesStateCopyWithImpl(
      _PreferencesState _value, $Res Function(_PreferencesState) _then)
      : super(_value, (v) => _then(v as _PreferencesState));

  @override
  _PreferencesState get _value => super._value as _PreferencesState;

  @override
  $Res call({
    Object language = freezed,
    Object themeMode = freezed,
  }) {
    return _then(_PreferencesState(
      language: language == freezed
          ? _value.language
          : language as SupportedLanguages,
      themeMode:
          themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
    ));
  }
}

@JsonSerializable()
class _$_PreferencesState
    with DiagnosticableTreeMixin
    implements _PreferencesState {
  const _$_PreferencesState(
      {this.language = SupportedLanguages.en,
      this.themeMode = ThemeMode.system})
      : assert(language != null),
        assert(themeMode != null);

  factory _$_PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$_$_PreferencesStateFromJson(json);

  @JsonKey(defaultValue: SupportedLanguages.en)
  @override
  final SupportedLanguages language;
  @JsonKey(defaultValue: ThemeMode.system)
  @override
  final ThemeMode themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreferencesState(language: $language, themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreferencesState'))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferencesState &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(themeMode);

  @override
  _$PreferencesStateCopyWith<_PreferencesState> get copyWith =>
      __$PreferencesStateCopyWithImpl<_PreferencesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreferencesStateToJson(this);
  }
}

abstract class _PreferencesState implements PreferencesState {
  const factory _PreferencesState(
      {SupportedLanguages language, ThemeMode themeMode}) = _$_PreferencesState;

  factory _PreferencesState.fromJson(Map<String, dynamic> json) =
      _$_PreferencesState.fromJson;

  @override
  SupportedLanguages get language;
  @override
  ThemeMode get themeMode;
  @override
  _$PreferencesStateCopyWith<_PreferencesState> get copyWith;
}
