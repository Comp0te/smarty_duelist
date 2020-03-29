// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required String id,
      @required String email,
      @required String name,
      String photoUrl,
      DateTime creationTimestamp,
      DateTime lastSignInTimestamp}) {
    return _User(
      id: id,
      email: email,
      name: name,
      photoUrl: photoUrl,
      creationTimestamp: creationTimestamp,
      lastSignInTimestamp: lastSignInTimestamp,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get id;
  String get email;
  String get name;
  String get photoUrl;
  DateTime get creationTimestamp;
  DateTime get lastSignInTimestamp;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String name,
      String photoUrl,
      DateTime creationTimestamp,
      DateTime lastSignInTimestamp});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
    Object creationTimestamp = freezed,
    Object lastSignInTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp as DateTime,
      lastSignInTimestamp: lastSignInTimestamp == freezed
          ? _value.lastSignInTimestamp
          : lastSignInTimestamp as DateTime,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String name,
      String photoUrl,
      DateTime creationTimestamp,
      DateTime lastSignInTimestamp});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
    Object creationTimestamp = freezed,
    Object lastSignInTimestamp = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp as DateTime,
      lastSignInTimestamp: lastSignInTimestamp == freezed
          ? _value.lastSignInTimestamp
          : lastSignInTimestamp as DateTime,
    ));
  }
}

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id,
      @required this.email,
      @required this.name,
      this.photoUrl,
      this.creationTimestamp,
      this.lastSignInTimestamp})
      : assert(id != null),
        assert(email != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  final DateTime creationTimestamp;
  @override
  final DateTime lastSignInTimestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, email: $email, name: $name, photoUrl: $photoUrl, creationTimestamp: $creationTimestamp, lastSignInTimestamp: $lastSignInTimestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('creationTimestamp', creationTimestamp))
      ..add(DiagnosticsProperty('lastSignInTimestamp', lastSignInTimestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.creationTimestamp, creationTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.creationTimestamp, creationTimestamp)) &&
            (identical(other.lastSignInTimestamp, lastSignInTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.lastSignInTimestamp, lastSignInTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(creationTimestamp) ^
      const DeepCollectionEquality().hash(lastSignInTimestamp);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String id,
      @required String email,
      @required String name,
      String photoUrl,
      DateTime creationTimestamp,
      DateTime lastSignInTimestamp}) = _$_User;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  DateTime get creationTimestamp;
  @override
  DateTime get lastSignInTimestamp;
  @override
  _$UserCopyWith<_User> get copyWith;
}
