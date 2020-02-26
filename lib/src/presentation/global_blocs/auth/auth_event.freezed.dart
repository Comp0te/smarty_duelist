// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
    @required Result signOut(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
    Result signOut(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signOut(SignOut value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    Result signOut(SignOut value),
    @required Result orElse(),
  });
}

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AppStarted appStarted() {
    return const AppStarted();
  }

  SignInWithCredential signInWithCredential(AuthCredentialsProviders provider) {
    return SignInWithCredential(
      provider,
    );
  }

  SignInWithEmail signInWithEmail(
      {@required String email, @required String password}) {
    return SignInWithEmail(
      email: email,
      password: password,
    );
  }

  SignOut signOut() {
    return const SignOut();
  }
}

const $AuthEvent = _$AuthEventTearOff();

class _$AppStarted with DiagnosticableTreeMixin implements AppStarted {
  const _$AppStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.appStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.appStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
    @required Result signOut(),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return appStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signOut(SignOut value),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class AppStarted implements AuthEvent {
  const factory AppStarted() = _$AppStarted;
}

class _$SignInWithCredential
    with DiagnosticableTreeMixin
    implements SignInWithCredential {
  const _$SignInWithCredential(this.provider) : assert(provider != null);

  @override
  final AuthCredentialsProviders provider;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInWithCredential(provider: $provider)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signInWithCredential'))
      ..add(DiagnosticsProperty('provider', provider));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithCredential &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(provider);

  @override
  _$SignInWithCredential copyWith({
    Object provider = freezed,
  }) {
    return _$SignInWithCredential(
      provider == freezed
          ? this.provider
          : provider as AuthCredentialsProviders,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
    @required Result signOut(),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return signInWithCredential(provider);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredential != null) {
      return signInWithCredential(provider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signOut(SignOut value),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return signInWithCredential(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredential != null) {
      return signInWithCredential(this);
    }
    return orElse();
  }
}

abstract class SignInWithCredential implements AuthEvent {
  const factory SignInWithCredential(AuthCredentialsProviders provider) =
      _$SignInWithCredential;

  AuthCredentialsProviders get provider;

  SignInWithCredential copyWith({AuthCredentialsProviders provider});
}

class _$SignInWithEmail
    with DiagnosticableTreeMixin
    implements SignInWithEmail {
  const _$SignInWithEmail({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInWithEmail(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signInWithEmail'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$SignInWithEmail copyWith({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _$SignInWithEmail(
      email: email == freezed ? this.email : email as String,
      password: password == freezed ? this.password : password as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
    @required Result signOut(),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return signInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signOut(SignOut value),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmail implements AuthEvent {
  const factory SignInWithEmail(
      {@required String email, @required String password}) = _$SignInWithEmail;

  String get email;
  String get password;

  SignInWithEmail copyWith({String email, String password});
}

class _$SignOut with DiagnosticableTreeMixin implements SignOut {
  const _$SignOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.signOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
    @required Result signOut(),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result signOut(SignOut value),
  }) {
    assert(appStarted != null);
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}
