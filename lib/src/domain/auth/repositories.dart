import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:smarty_duelist/src/core/index.dart' show SupportedLanguages;

import '../index.dart' show AuthFailure;

abstract class IAuthRepository {
  Future<Either<AuthFailure, AuthResult>> signInWithEmail({
    String email,
    String password,
  });

  Future<Either<AuthFailure, AuthResult>> signInWithCredentials({
    AuthCredentialsProviders provider,
  });

  Future<Either<AuthFailure, AuthResult>> signUpWithEmail({
    String email,
    String password,
  });

  Future<Either<AuthFailure, bool>> signOut();

  Future<Either<AuthFailure, FirebaseUser>> getCurrentUser();

  Stream<FirebaseUser> onAuthStateChanged();

  Future<Either<AuthFailure, bool>> sendResetPassword({
    String email,
    SupportedLanguages languageTag,
  });

  Future<Either<AuthFailure, bool>> confirmResetPassword({
    String code,
    String newPassword,
  });
}

enum AuthCredentialsProviders { google, facebook, apple }
