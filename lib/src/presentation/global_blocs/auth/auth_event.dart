import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/auth/index.dart'
    show AuthCredentialsProviders;

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthEvent {}

class SignInWithCredential extends AuthEvent {
  final AuthCredentialsProviders provider;

  const SignInWithCredential({@required this.provider});

  @override
  List<Object> get props => [provider];
}

class SignInWithEmail extends AuthEvent {
  final String email;
  final String password;

  const SignInWithEmail({
    @required this.email,
    @required this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class LoggedOut extends AuthEvent {}
