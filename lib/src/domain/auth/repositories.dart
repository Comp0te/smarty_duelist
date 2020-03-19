import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

import '../domain.dart' show AuthFailure;

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

  Future<void> signOut();

  Future<Option<FirebaseUser>> getCurrentUser();

  Stream<FirebaseUser> onAuthStateChanged();

  Future<Either<AuthFailure, Unit>> sendResetPassword({
    String email,
    SupportedLanguages languageTag,
  });

  Future<Either<AuthFailure, Unit>> confirmResetPassword({
    String code,
    String newPassword,
  });
  Future<Either<AuthFailure, List<String>>> fetchSignInMethodsForEmail(
    String email,
  );
}

enum AuthCredentialsProviders { google, facebook, apple }
