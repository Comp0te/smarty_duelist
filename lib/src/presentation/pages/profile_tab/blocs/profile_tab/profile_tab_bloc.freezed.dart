// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileTabEventTearOff {
  const _$ProfileTabEventTearOff();

  AvatarSelected avatarSelected(Uint8List avatar) {
    return AvatarSelected(
      avatar,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

// ignore: unused_element
const $ProfileTabEvent = _$ProfileTabEventTearOff();

mixin _$ProfileTabEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarSelected(Uint8List avatar),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarSelected(Uint8List avatar),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarSelected(AvatarSelected value),
    @required Result submit(Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarSelected(AvatarSelected value),
    Result submit(Submit value),
    @required Result orElse(),
  });
}

abstract class $ProfileTabEventCopyWith<$Res> {
  factory $ProfileTabEventCopyWith(
          ProfileTabEvent value, $Res Function(ProfileTabEvent) then) =
      _$ProfileTabEventCopyWithImpl<$Res>;
}

class _$ProfileTabEventCopyWithImpl<$Res>
    implements $ProfileTabEventCopyWith<$Res> {
  _$ProfileTabEventCopyWithImpl(this._value, this._then);

  final ProfileTabEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileTabEvent) _then;
}

abstract class $AvatarSelectedCopyWith<$Res> {
  factory $AvatarSelectedCopyWith(
          AvatarSelected value, $Res Function(AvatarSelected) then) =
      _$AvatarSelectedCopyWithImpl<$Res>;
  $Res call({Uint8List avatar});
}

class _$AvatarSelectedCopyWithImpl<$Res>
    extends _$ProfileTabEventCopyWithImpl<$Res>
    implements $AvatarSelectedCopyWith<$Res> {
  _$AvatarSelectedCopyWithImpl(
      AvatarSelected _value, $Res Function(AvatarSelected) _then)
      : super(_value, (v) => _then(v as AvatarSelected));

  @override
  AvatarSelected get _value => super._value as AvatarSelected;

  @override
  $Res call({
    Object avatar = freezed,
  }) {
    return _then(AvatarSelected(
      avatar == freezed ? _value.avatar : avatar as Uint8List,
    ));
  }
}

class _$AvatarSelected with DiagnosticableTreeMixin implements AvatarSelected {
  const _$AvatarSelected(this.avatar) : assert(avatar != null);

  @override
  final Uint8List avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileTabEvent.avatarSelected(avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileTabEvent.avatarSelected'))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AvatarSelected &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatar);

  @override
  $AvatarSelectedCopyWith<AvatarSelected> get copyWith =>
      _$AvatarSelectedCopyWithImpl<AvatarSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarSelected(Uint8List avatar),
    @required Result submit(),
  }) {
    assert(avatarSelected != null);
    assert(submit != null);
    return avatarSelected(avatar);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarSelected(Uint8List avatar),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarSelected != null) {
      return avatarSelected(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarSelected(AvatarSelected value),
    @required Result submit(Submit value),
  }) {
    assert(avatarSelected != null);
    assert(submit != null);
    return avatarSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarSelected(AvatarSelected value),
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarSelected != null) {
      return avatarSelected(this);
    }
    return orElse();
  }
}

abstract class AvatarSelected implements ProfileTabEvent {
  const factory AvatarSelected(Uint8List avatar) = _$AvatarSelected;

  Uint8List get avatar;
  $AvatarSelectedCopyWith<AvatarSelected> get copyWith;
}

abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

class _$SubmitCopyWithImpl<$Res> extends _$ProfileTabEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

class _$Submit with DiagnosticableTreeMixin implements Submit {
  const _$Submit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileTabEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileTabEvent.submit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarSelected(Uint8List avatar),
    @required Result submit(),
  }) {
    assert(avatarSelected != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarSelected(Uint8List avatar),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarSelected(AvatarSelected value),
    @required Result submit(Submit value),
  }) {
    assert(avatarSelected != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarSelected(AvatarSelected value),
    Result submit(Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements ProfileTabEvent {
  const factory Submit() = _$Submit;
}

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
