// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  SignedIn signedIn(User user) {
    return SignedIn(
      user,
    );
  }

  SignedOut signedOut() {
    return const SignedOut();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signedIn(User user),
    @required Result signedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signedIn(User user),
    Result signedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $SignedInCopyWith<$Res> {
  factory $SignedInCopyWith(SignedIn value, $Res Function(SignedIn) then) =
      _$SignedInCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$SignedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedInCopyWith<$Res> {
  _$SignedInCopyWithImpl(SignedIn _value, $Res Function(SignedIn) _then)
      : super(_value, (v) => _then(v as SignedIn));

  @override
  SignedIn get _value => super._value as SignedIn;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignedIn(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$SignedIn with DiagnosticableTreeMixin implements SignedIn {
  const _$SignedIn(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedIn(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signedIn'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedIn &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignedInCopyWith<SignedIn> get copyWith =>
      _$SignedInCopyWithImpl<SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signedIn(User user),
    @required Result signedOut(),
  }) {
    assert(signedIn != null);
    assert(signedOut != null);
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signedIn(User user),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(signedIn != null);
    assert(signedOut != null);
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements AuthEvent {
  const factory SignedIn(User user) = _$SignedIn;

  User get user;
  $SignedInCopyWith<SignedIn> get copyWith;
}

abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

class _$SignedOut with DiagnosticableTreeMixin implements SignedOut {
  const _$SignedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signedIn(User user),
    @required Result signedOut(),
  }) {
    assert(signedIn != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signedIn(User user),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(signedIn != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthInitializing authInitializing() {
    return const AuthInitializing();
  }

  AuthAuthenticated authAuthenticated(User user) {
    return AuthAuthenticated(
      user,
    );
  }

  AuthUnauthenticated authUnauthenticated() {
    return const AuthUnauthenticated();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitializing(),
    @required Result authAuthenticated(User user),
    @required Result authUnauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitializing(),
    Result authAuthenticated(User user),
    Result authUnauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitializing(AuthInitializing value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitializing(AuthInitializing value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
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

abstract class $AuthInitializingCopyWith<$Res> {
  factory $AuthInitializingCopyWith(
          AuthInitializing value, $Res Function(AuthInitializing) then) =
      _$AuthInitializingCopyWithImpl<$Res>;
}

class _$AuthInitializingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInitializingCopyWith<$Res> {
  _$AuthInitializingCopyWithImpl(
      AuthInitializing _value, $Res Function(AuthInitializing) _then)
      : super(_value, (v) => _then(v as AuthInitializing));

  @override
  AuthInitializing get _value => super._value as AuthInitializing;
}

class _$AuthInitializing
    with DiagnosticableTreeMixin
    implements AuthInitializing {
  const _$AuthInitializing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authInitializing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authInitializing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitializing(),
    @required Result authAuthenticated(User user),
    @required Result authUnauthenticated(),
  }) {
    assert(authInitializing != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    return authInitializing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitializing(),
    Result authAuthenticated(User user),
    Result authUnauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInitializing != null) {
      return authInitializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitializing(AuthInitializing value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
  }) {
    assert(authInitializing != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    return authInitializing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitializing(AuthInitializing value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInitializing != null) {
      return authInitializing(this);
    }
    return orElse();
  }
}

abstract class AuthInitializing implements AuthState {
  const factory AuthInitializing() = _$AuthInitializing;
}

abstract class $AuthAuthenticatedCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(
          AuthAuthenticated value, $Res Function(AuthAuthenticated) then) =
      _$AuthAuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
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
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$AuthAuthenticated
    with DiagnosticableTreeMixin
    implements AuthAuthenticated {
  const _$AuthAuthenticated(this.user) : assert(user != null);

  @override
  final User user;

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
    @required Result authInitializing(),
    @required Result authAuthenticated(User user),
    @required Result authUnauthenticated(),
  }) {
    assert(authInitializing != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    return authAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitializing(),
    Result authAuthenticated(User user),
    Result authUnauthenticated(),
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
    @required Result authInitializing(AuthInitializing value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
  }) {
    assert(authInitializing != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    return authAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitializing(AuthInitializing value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
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
  const factory AuthAuthenticated(User user) = _$AuthAuthenticated;

  User get user;
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
    @required Result authInitializing(),
    @required Result authAuthenticated(User user),
    @required Result authUnauthenticated(),
  }) {
    assert(authInitializing != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    return authUnauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitializing(),
    Result authAuthenticated(User user),
    Result authUnauthenticated(),
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
    @required Result authInitializing(AuthInitializing value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
  }) {
    assert(authInitializing != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    return authUnauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitializing(AuthInitializing value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
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
