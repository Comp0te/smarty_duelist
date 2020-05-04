// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserFailureTearOff {
  const _$UserFailureTearOff();

  UpdateUserFailure updateUser(PlatformException exp) {
    return UpdateUserFailure(
      exp,
    );
  }

  DeleteUserFailure deleteUser(PlatformException exp) {
    return DeleteUserFailure(
      exp,
    );
  }
}

// ignore: unused_element
const $UserFailure = _$UserFailureTearOff();

mixin _$UserFailure {
  PlatformException get exp;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUser(PlatformException exp),
    @required Result deleteUser(PlatformException exp),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUser(PlatformException exp),
    Result deleteUser(PlatformException exp),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUser(UpdateUserFailure value),
    @required Result deleteUser(DeleteUserFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUser(UpdateUserFailure value),
    Result deleteUser(DeleteUserFailure value),
    @required Result orElse(),
  });

  $UserFailureCopyWith<UserFailure> get copyWith;
}

abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(_value.copyWith(
      exp: exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

abstract class $UpdateUserFailureCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory $UpdateUserFailureCopyWith(
          UpdateUserFailure value, $Res Function(UpdateUserFailure) then) =
      _$UpdateUserFailureCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException exp});
}

class _$UpdateUserFailureCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
    implements $UpdateUserFailureCopyWith<$Res> {
  _$UpdateUserFailureCopyWithImpl(
      UpdateUserFailure _value, $Res Function(UpdateUserFailure) _then)
      : super(_value, (v) => _then(v as UpdateUserFailure));

  @override
  UpdateUserFailure get _value => super._value as UpdateUserFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(UpdateUserFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$UpdateUserFailure
    with DiagnosticableTreeMixin
    implements UpdateUserFailure {
  const _$UpdateUserFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure.updateUser(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure.updateUser'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $UpdateUserFailureCopyWith<UpdateUserFailure> get copyWith =>
      _$UpdateUserFailureCopyWithImpl<UpdateUserFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUser(PlatformException exp),
    @required Result deleteUser(PlatformException exp),
  }) {
    assert(updateUser != null);
    assert(deleteUser != null);
    return updateUser(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUser(PlatformException exp),
    Result deleteUser(PlatformException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUser != null) {
      return updateUser(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUser(UpdateUserFailure value),
    @required Result deleteUser(DeleteUserFailure value),
  }) {
    assert(updateUser != null);
    assert(deleteUser != null);
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUser(UpdateUserFailure value),
    Result deleteUser(DeleteUserFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserFailure implements UserFailure {
  const factory UpdateUserFailure(PlatformException exp) = _$UpdateUserFailure;

  @override
  PlatformException get exp;
  @override
  $UpdateUserFailureCopyWith<UpdateUserFailure> get copyWith;
}

abstract class $DeleteUserFailureCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory $DeleteUserFailureCopyWith(
          DeleteUserFailure value, $Res Function(DeleteUserFailure) then) =
      _$DeleteUserFailureCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException exp});
}

class _$DeleteUserFailureCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
    implements $DeleteUserFailureCopyWith<$Res> {
  _$DeleteUserFailureCopyWithImpl(
      DeleteUserFailure _value, $Res Function(DeleteUserFailure) _then)
      : super(_value, (v) => _then(v as DeleteUserFailure));

  @override
  DeleteUserFailure get _value => super._value as DeleteUserFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(DeleteUserFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$DeleteUserFailure
    with DiagnosticableTreeMixin
    implements DeleteUserFailure {
  const _$DeleteUserFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFailure.deleteUser(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFailure.deleteUser'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteUserFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $DeleteUserFailureCopyWith<DeleteUserFailure> get copyWith =>
      _$DeleteUserFailureCopyWithImpl<DeleteUserFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateUser(PlatformException exp),
    @required Result deleteUser(PlatformException exp),
  }) {
    assert(updateUser != null);
    assert(deleteUser != null);
    return deleteUser(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateUser(PlatformException exp),
    Result deleteUser(PlatformException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteUser != null) {
      return deleteUser(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateUser(UpdateUserFailure value),
    @required Result deleteUser(DeleteUserFailure value),
  }) {
    assert(updateUser != null);
    assert(deleteUser != null);
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateUser(UpdateUserFailure value),
    Result deleteUser(DeleteUserFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUserFailure implements UserFailure {
  const factory DeleteUserFailure(PlatformException exp) = _$DeleteUserFailure;

  @override
  PlatformException get exp;
  @override
  $DeleteUserFailureCopyWith<DeleteUserFailure> get copyWith;
}
