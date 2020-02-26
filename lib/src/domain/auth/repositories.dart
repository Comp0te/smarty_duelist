import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:smarty_duelist/src/core/index.dart' show SupportedLanguages;

import '../index.dart' show Failure;

abstract class IAuthRepository {
  Future<Either<Failure, AuthResult>> signInWithEmail({
    String email,
    String password,
  });

  Future<Either<Failure, AuthResult>> signInWithCredentials({
    AuthCredentialsProviders provider,
  });

  Future<Either<Failure, AuthResult>> signUpWithEmail({
    String email,
    String password,
  });

  Future<Either<Failure, void>> signOut();

  Future<Either<Failure, FirebaseUser>> getCurrentUser();

  Stream<FirebaseUser> onAuthStateChanged();

  Future<Either<Failure, void>> sendResetPassword({
    String email,
    SupportedLanguages languageTag,
  });

  Future<Either<Failure, void>> confirmResetPassword({
    String code,
    String newPassword,
  });
}

enum AuthCredentialsProviders { google, facebook, apple }
