// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
    @required Result authError(@required Failure failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    Result authError(@required Failure failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInit(AuthInit value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnauthenticated(AuthUnauthenticated value),
    @required Result authLoading(AuthLoading value),
    @required Result authError(AuthError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    Result authError(AuthError value),
    @required Result orElse(),
  });
}

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

  AuthError authError({@required Failure failure}) {
    return AuthError(
      failure: failure,
    );
  }
}

const $AuthState = _$AuthStateTearOff();

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
    @required Result authError(@required Failure failure),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authInit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    Result authError(@required Failure failure),
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
    @required Result authError(AuthError value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authInit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    Result authError(AuthError value),
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
  _$AuthAuthenticated copyWith({
    Object user = freezed,
  }) {
    return _$AuthAuthenticated(
      user: user == freezed ? this.user : user as FirebaseUser,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
    @required Result authError(@required Failure failure),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    Result authError(@required Failure failure),
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
    @required Result authError(AuthError value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    Result authError(AuthError value),
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

  AuthAuthenticated copyWith({FirebaseUser user});
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
    @required Result authError(@required Failure failure),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authUnauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    Result authError(@required Failure failure),
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
    @required Result authError(AuthError value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authUnauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    Result authError(AuthError value),
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
    @required Result authError(@required Failure failure),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    Result authError(@required Failure failure),
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
    @required Result authError(AuthError value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    Result authError(AuthError value),
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

class _$AuthError with DiagnosticableTreeMixin implements AuthError {
  const _$AuthError({@required this.failure}) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authError(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authError'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$AuthError copyWith({
    Object failure = freezed,
  }) {
    return _$AuthError(
      failure: failure == freezed ? this.failure : failure as Failure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInit(),
    @required Result authAuthenticated(@required FirebaseUser user),
    @required Result authUnauthenticated(),
    @required Result authLoading(),
    @required Result authError(@required Failure failure),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInit(),
    Result authAuthenticated(@required FirebaseUser user),
    Result authUnauthenticated(),
    Result authLoading(),
    Result authError(@required Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authError != null) {
      return authError(failure);
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
    @required Result authError(AuthError value),
  }) {
    assert(authInit != null);
    assert(authAuthenticated != null);
    assert(authUnauthenticated != null);
    assert(authLoading != null);
    assert(authError != null);
    return authError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInit(AuthInit value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnauthenticated(AuthUnauthenticated value),
    Result authLoading(AuthLoading value),
    Result authError(AuthError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError implements AuthState {
  const factory AuthError({@required Failure failure}) = _$AuthError;

  Failure get failure;

  AuthError copyWith({Failure failure});
}
