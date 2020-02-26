// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthException exception),
    @required Result unknown(Exception exception),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthException exception),
    Result unknown(Exception exception),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(AuthFailure value),
    @required Result unknown(UnknownFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(AuthFailure value),
    Result unknown(UnknownFailure value),
    @required Result orElse(),
  });
}

class _$FailureTearOff {
  const _$FailureTearOff();

  AuthFailure auth(AuthException exception) {
    return AuthFailure(
      exception,
    );
  }

  UnknownFailure unknown(Exception exception) {
    return UnknownFailure(
      exception,
    );
  }
}

const $Failure = _$FailureTearOff();

class _$AuthFailure with DiagnosticableTreeMixin implements AuthFailure {
  const _$AuthFailure(this.exception) : assert(exception != null);

  @override
  final AuthException exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.auth(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.auth'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthFailure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @override
  _$AuthFailure copyWith({
    Object exception = freezed,
  }) {
    return _$AuthFailure(
      exception == freezed ? this.exception : exception as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthException exception),
    @required Result unknown(Exception exception),
  }) {
    assert(auth != null);
    assert(unknown != null);
    return auth(exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthException exception),
    Result unknown(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(AuthFailure value),
    @required Result unknown(UnknownFailure value),
  }) {
    assert(auth != null);
    assert(unknown != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(AuthFailure value),
    Result unknown(UnknownFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure(AuthException exception) = _$AuthFailure;

  AuthException get exception;

  AuthFailure copyWith({AuthException exception});
}

class _$UnknownFailure with DiagnosticableTreeMixin implements UnknownFailure {
  const _$UnknownFailure(this.exception) : assert(exception != null);

  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.unknown(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure.unknown'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnknownFailure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @override
  _$UnknownFailure copyWith({
    Object exception = freezed,
  }) {
    return _$UnknownFailure(
      exception == freezed ? this.exception : exception as Exception,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result auth(AuthException exception),
    @required Result unknown(Exception exception),
  }) {
    assert(auth != null);
    assert(unknown != null);
    return unknown(exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result auth(AuthException exception),
    Result unknown(Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result auth(AuthFailure value),
    @required Result unknown(UnknownFailure value),
  }) {
    assert(auth != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result auth(AuthFailure value),
    Result unknown(UnknownFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure(Exception exception) = _$UnknownFailure;

  Exception get exception;

  UnknownFailure copyWith({Exception exception});
}
