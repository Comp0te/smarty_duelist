import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../index.dart' show AuthFailure;

abstract class IAuthRepository {
  Future<Either<AuthFailure, AuthResult>> signInWithEmail({
    String email,
    String password,
  });

  Future<Either<AuthFailure, AuthResult>> signInWithCredentials({
    AuthCredentialsProviders provider,
  });
}

enum AuthCredentialsProviders { google, facebook, apple }
