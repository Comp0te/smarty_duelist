// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileTabStateTearOff {
  const _$ProfileTabStateTearOff();

  _ProfileTabState call({Uint8List avatar, String name}) {
    return _ProfileTabState(
      avatar: avatar,
      name: name,
    );
  }
}

// ignore: unused_element
const $ProfileTabState = _$ProfileTabStateTearOff();

mixin _$ProfileTabState {
  Uint8List get avatar;
  String get name;

  $ProfileTabStateCopyWith<ProfileTabState> get copyWith;
}

abstract class $ProfileTabStateCopyWith<$Res> {
  factory $ProfileTabStateCopyWith(
          ProfileTabState value, $Res Function(ProfileTabState) then) =
      _$ProfileTabStateCopyWithImpl<$Res>;
  $Res call({Uint8List avatar, String name});
}

class _$ProfileTabStateCopyWithImpl<$Res>
    implements $ProfileTabStateCopyWith<$Res> {
  _$ProfileTabStateCopyWithImpl(this._value, this._then);

  final ProfileTabState _value;
  // ignore: unused_field
  final $Res Function(ProfileTabState) _then;

  @override
  $Res call({
    Object avatar = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed ? _value.avatar : avatar as Uint8List,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$ProfileTabStateCopyWith<$Res>
    implements $ProfileTabStateCopyWith<$Res> {
  factory _$ProfileTabStateCopyWith(
          _ProfileTabState value, $Res Function(_ProfileTabState) then) =
      __$ProfileTabStateCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List avatar, String name});
}

class __$ProfileTabStateCopyWithImpl<$Res>
    extends _$ProfileTabStateCopyWithImpl<$Res>
    implements _$ProfileTabStateCopyWith<$Res> {
  __$ProfileTabStateCopyWithImpl(
      _ProfileTabState _value, $Res Function(_ProfileTabState) _then)
      : super(_value, (v) => _then(v as _ProfileTabState));

  @override
  _ProfileTabState get _value => super._value as _ProfileTabState;

  @override
  $Res call({
    Object avatar = freezed,
    Object name = freezed,
  }) {
    return _then(_ProfileTabState(
      avatar: avatar == freezed ? _value.avatar : avatar as Uint8List,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_ProfileTabState
    with DiagnosticableTreeMixin
    implements _ProfileTabState {
  const _$_ProfileTabState({this.avatar, this.name});

  @override
  final Uint8List avatar;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileTabState(avatar: $avatar, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileTabState'))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileTabState &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$ProfileTabStateCopyWith<_ProfileTabState> get copyWith =>
      __$ProfileTabStateCopyWithImpl<_ProfileTabState>(this, _$identity);
}

abstract class _ProfileTabState implements ProfileTabState {
  const factory _ProfileTabState({Uint8List avatar, String name}) =
      _$_ProfileTabState;

  @override
  Uint8List get avatar;
  @override
  String get name;
  @override
  _$ProfileTabStateCopyWith<_ProfileTabState> get copyWith;
}
