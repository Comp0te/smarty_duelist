import 'package:dartz/dartz.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

import 'entities/entities.dart';
import 'failures/failures.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, User>> signInWithEmail({
    String email,
    String password,
  });

  Future<Either<AuthFailure, User>> signInWithCredentials({
    AuthCredentialsProviders provider,
  });

  Future<Either<AuthFailure, User>> signUpWithEmail({
    String email,
    String password,
  });

  Future<void> signOut();

  Future<Option<User>> getCurrentUser();

  Stream<User> onAuthStateChanged();

  Future<Either<AuthFailure, Unit>> sendResetPassword({
    String email,
    SupportedLanguages languageTag,
  });

  Future<Either<AuthFailure, Unit>> confirmResetPassword({
    String code,
    String newPassword,
  });

  Future<Either<AuthFailure, Unit>> changeEmail(String email);

  Future<Either<AuthFailure, Unit>> changePassword(String password);

  Future<Either<AuthFailure, Unit>> deleteUser();
}

enum AuthCredentialsProviders { google, facebook, apple }
