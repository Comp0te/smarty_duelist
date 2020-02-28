// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null

part of 'sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  });
}

class _$SignInEventTearOff {
  const _$SignInEventTearOff();

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
}

const $SignInEvent = _$SignInEventTearOff();

class _$SignInWithCredential
    with DiagnosticableTreeMixin
    implements SignInWithCredential {
  const _$SignInWithCredential(this.provider) : assert(provider != null);

  @override
  final AuthCredentialsProviders provider;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signInWithCredential(provider: $provider)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.signInWithCredential'))
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
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
  }) {
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    return signInWithCredential(provider);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
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
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
  }) {
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    return signInWithCredential(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredential != null) {
      return signInWithCredential(this);
    }
    return orElse();
  }
}

abstract class SignInWithCredential implements SignInEvent {
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
    return 'SignInEvent.signInWithEmail(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.signInWithEmail'))
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
    @required Result signInWithCredential(AuthCredentialsProviders provider),
    @required
        Result signInWithEmail(
            @required String email, @required String password),
  }) {
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    return signInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithCredential(AuthCredentialsProviders provider),
    Result signInWithEmail(@required String email, @required String password),
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
    @required Result signInWithCredential(SignInWithCredential value),
    @required Result signInWithEmail(SignInWithEmail value),
  }) {
    assert(signInWithCredential != null);
    assert(signInWithEmail != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithCredential(SignInWithCredential value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmail implements SignInEvent {
  const factory SignInWithEmail(
      {@required String email, @required String password}) = _$SignInWithEmail;

  String get email;
  String get password;

  SignInWithEmail copyWith({String email, String password});
}
