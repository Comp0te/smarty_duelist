import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../index.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthResult>> signInWithEmail({
    String email,
    String password,
  });

  Future<Either<Failure, AuthResult>> signInWithCredentials({
    AuthCredentialsProviders provider,
  });
}

abstract class IAuthWithCredentialDataProvider {
  Future<AuthResult> signIn();
}

abstract class IAuthWithEmailDataProvider {
  Future<AuthResult> signIn({
    String email,
    String password,
  });
}

enum AuthCredentialsProviders { google, facebook, apple }
