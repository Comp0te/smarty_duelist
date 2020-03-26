// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthInit authInit() {
    return const AuthInit();
  }

  AuthAuthenticated authAuthenticated({@required FirebaseUser user}) {
    return AuthAuthenticated(
      user: user,
    );
  }

  AuthUnauthenticated authUnauthenticated() {
    return const AuthUnauthenticated();
  }

  AuthLoading authLoading() {
    return const AuthLoading();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInit(AuthInit value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
    @required Result authLoading(AuthLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $AuthInitCopyWith<$Res> {
  factory $AuthInitCopyWith(AuthInit value, $Res Function(AuthInit) then) =
      _$AuthInitCopyWithImpl<$Res>;
}

class _$AuthInitCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInitCopyWith<$Res> {
  _$AuthInitCopyWithImpl(AuthInit _value, $Res Function(AuthInit) _then)
      : super(_value, (v) => _then(v as AuthInit));

  @override
  AuthInit get _value => super._value as AuthInit;
}

class _$AuthInit with DiagnosticableTreeMixin implements AuthInit {
  const _$AuthInit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authInit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authInit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authInit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInit != null) {
      return authInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInit(AuthInit value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
    @required Result authLoading(AuthLoading value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authInit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInit != null) {
      return authInit(this);
    }
    return orElse();
  }
}

abstract class AuthInit implements AuthState {
  const factory AuthInit() = _$AuthInit;
}

abstract class $AuthAuthenticatedCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(
          AuthAuthenticated value, $Res Function(AuthAuthenticated) then) =
      _$AuthAuthenticatedCopyWithImpl<$Res>;
  $Res call({FirebaseUser user});
}

class _$AuthAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(
      AuthAuthenticated _value, $Res Function(AuthAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthAuthenticated));

  @override
  AuthAuthenticated get _value => super._value as AuthAuthenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(AuthAuthenticated(
      user: user == freezed ? _value.user : user as FirebaseUser,
    ));
  }
}

class _$AuthAuthenticated
    with DiagnosticableTreeMixin
    implements AuthAuthenticated {
  const _$AuthAuthenticated({@required this.user}) : assert(user != null);

  @override
  final FirebaseUser user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authAuthenticated(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authAuthenticated'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthAuthenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith =>
      _$AuthAuthenticatedCopyWithImpl<AuthAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authAuthenticated != null) {
      return authAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInit(AuthInit value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
    @required Result authLoading(AuthLoading value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authAuthenticated != null) {
      return authAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthAuthenticated implements AuthState {
  const factory AuthAuthenticated({@required FirebaseUser user}) =
      _$AuthAuthenticated;

  FirebaseUser get user;
  $AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith;
}

abstract class $AuthUnauthenticatedCopyWith<$Res> {
  factory $AuthUnauthenticatedCopyWith(
          AuthUnauthenticated value, $Res Function(AuthUnauthenticated) then) =
      _$AuthUnauthenticatedCopyWithImpl<$Res>;
}

class _$AuthUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthUnauthenticatedCopyWith<$Res> {
  _$AuthUnauthenticatedCopyWithImpl(
      AuthUnauthenticated _value, $Res Function(AuthUnauthenticated) _then)
      : super(_value, (v) => _then(v as AuthUnauthenticated));

  @override
  AuthUnauthenticated get _value => super._value as AuthUnauthenticated;
}

class _$AuthUnauthenticated
    with DiagnosticableTreeMixin
    implements AuthUnauthenticated {
  const _$AuthUnauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authUnauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authUnauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authUnauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authUnauthenticated != null) {
      return authUnauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInit(AuthInit value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
    @required Result authLoading(AuthLoading value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authUnauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authUnauthenticated != null) {
      return authUnauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthUnauthenticated implements AuthState {
  const factory AuthUnauthenticated() = _$AuthUnauthenticated;
}

abstract class $AuthLoadingCopyWith<$Res> {
  factory $AuthLoadingCopyWith(
          AuthLoading value, $Res Function(AuthLoading) then) =
      _$AuthLoadingCopyWithImpl<$Res>;
}

class _$AuthLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWithImpl(
      AuthLoading _value, $Res Function(AuthLoading) _then)
      : super(_value, (v) => _then(v as AuthLoading));

  @override
  AuthLoading get _value => super._value as AuthLoading;
}

class _$AuthLoading with DiagnosticableTreeMixin implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authLoading != null) {
      return authLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInit(AuthInit value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
    @required Result authLoading(AuthLoading value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    return authLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authLoading != null) {
      return authLoading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}
