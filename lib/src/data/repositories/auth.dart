import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/constants/languages.dart'
    show SupportedLanguages;
import 'package:smarty_duelist/src/domain/domain.dart'
    show
        AuthAbortException,
        AuthCredentialsProviders,
        AuthFailure,
        IAuthDataProvider,
        IAuthRepository;

@RegisterAs(IAuthRepository)
@singleton
@immutable
class AuthRepository implements IAuthRepository {
  final IAuthDataProvider authDataProvider;

  const AuthRepository({
    @required this.authDataProvider,
  });

  @override
  Future<Either<AuthFailure, AuthResult>> signInWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      return Right(await authDataProvider.signInWithEmail(
        email: email,
        password: password,
      ));
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    }
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signInWithCredentials({
    @required AuthCredentialsProviders provider,
  }) async {
    try {
      switch (provider) {
        case AuthCredentialsProviders.google:
          return Right(await authDataProvider.signInWithGoogle());
        case AuthCredentialsProviders.facebook:
          return Right(await authDataProvider.signInWithApple());
        case AuthCredentialsProviders.apple:
          return Right(await authDataProvider.signInWithApple());
        default:
          return null;
      }
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    } on AuthAbortException {
      return Left(const AuthFailure(AuthException(null, null)));
    }
  }

  @override
  Future<Either<AuthFailure, bool>> confirmResetPassword({
    String code,
    String newPassword,
  }) async {
    try {
      await authDataProvider.confirmResetPassword(
        code: code,
        newPassword: newPassword,
      );

      return Right(true);
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    }
  }

  @override
  Future<Either<AuthFailure, FirebaseUser>> getCurrentUser() async {
    try {
      return Right(await authDataProvider.getCurrentUser());
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    }
  }

  @override
  Stream<FirebaseUser> onAuthStateChanged() {
    return authDataProvider.onAuthStateChanged();
  }

  @override
  Future<Either<AuthFailure, bool>> sendResetPassword({
    @required String email,
    SupportedLanguages languageTag = SupportedLanguages.ru,
  }) async {
    try {
      await authDataProvider.configureAuthLanguage(languageTag);
      await authDataProvider.sendResetPassword(email: email);

      return Right(true);
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    }
  }

  @override
  Future<Either<AuthFailure, bool>> signOut() async {
    try {
      await authDataProvider.signOut();

      return Right(true);
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    }
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signUpWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      return Right(await authDataProvider.signUpWithEmail(
        email: email,
        password: password,
      ));
    } on AuthException catch (e) {
      return Left(AuthFailure(e));
    }
  }
}
