import 'package:firebase_auth/firebase_auth.dart';

import '../index.dart';

class AuthFailure extends Failure {
  final String code;

  const AuthFailure(String message, this.code) : super(message);

  factory AuthFailure.fromAuthException(AuthException exception) {
    return AuthFailure(exception.message, exception.code);
  }

  @override
  List<Object> get props => [message, code];
}
