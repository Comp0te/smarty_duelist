// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Failure {
  AuthException get exception;

  Failure copyWith({AuthException exception});
}

class _$FailureTearOff {
  const _$FailureTearOff();

  AuthFailure auth(AuthException exception) {
    return AuthFailure(
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
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure(AuthException exception) = _$AuthFailure;

  @override
  AuthException get exception;

  @override
  AuthFailure copyWith({AuthException exception});
}
