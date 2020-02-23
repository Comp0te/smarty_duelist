import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

@immutable
abstract class Failure extends Equatable {
  final String message;
  const Failure([this.message]);

  @override
  List<Object> get props => [message];
}

class UnknownFailure extends Failure {
  const UnknownFailure([String message]) : super(message);
}

class AuthFailure extends Failure {
  final String code;

  const AuthFailure(String message, this.code) : super(message);

  factory AuthFailure.fromAuthException(AuthException exception) {
    return AuthFailure(exception.message, exception.code);
  }

  @override
  List<Object> get props => [message, code];
}
