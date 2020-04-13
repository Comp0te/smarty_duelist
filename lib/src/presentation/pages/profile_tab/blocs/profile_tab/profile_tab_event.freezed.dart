// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_tab_event.dart';

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
