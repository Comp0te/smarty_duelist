import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../core/models/index.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthResult>> signInWithEmail({
    String email,
    String password,
  });

  Future<Either<Failure, AuthResult>> signInWithCredentials({
    AuthCredentialsProviders provider,
  });
}

enum AuthCredentialsProviders { google, facebook, apple }
