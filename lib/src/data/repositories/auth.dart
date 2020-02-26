import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/constants/languages.dart'
    show SupportedLanguages;
import 'package:smarty_duelist/src/domain/index.dart'
    show
        AuthCredentialsProviders,
        AuthFailure,
        Failure,
        IAuthDataProvider,
        IAuthRepository,
        UnknownFailure;

@immutable
class AuthRepository implements IAuthRepository {
  final IAuthDataProvider authDataProvider;

  const AuthRepository({
    @required this.authDataProvider,
  });

  @override
  Future<Either<Failure, AuthResult>> signInWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      return Right(await authDataProvider.signInWithEmail(
        email: email,
        password: password,
      ));
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  @override
  Future<Either<Failure, AuthResult>> signInWithCredentials({
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
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  @override
  Future<Either<Failure, void>> confirmResetPassword({
    String code,
    String newPassword,
  }) async {
    try {
      return Right(await authDataProvider.confirmResetPassword(
        code: code,
        newPassword: newPassword,
      ));
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  @override
  Future<Either<Failure, FirebaseUser>> getCurrentUser() async {
    try {
      return Right(await authDataProvider.getCurrentUser());
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  @override
  Stream<FirebaseUser> onAuthStateChanged() {
    return authDataProvider.onAuthStateChanged();
  }

  @override
  Future<Either<Failure, void>> sendResetPassword({
    @required String email,
    SupportedLanguages languageTag = SupportedLanguages.ru,
  }) async {
    try {
      await authDataProvider.configureAuthLanguage(languageTag);

      return Right(await authDataProvider.sendResetPassword(email: email));
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      return Right(await authDataProvider.signOut());
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  @override
  Future<Either<Failure, AuthResult>> signUpWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      return Right(await authDataProvider.signUpWithEmail(
        email: email,
        password: password,
      ));
    } on Exception catch (e) {
      return Left(_handelErrors(e));
    }
  }

  Failure _handelErrors(Exception e) {
    if (e is AuthException) return AuthFailure(e);

    return UnknownFailure(e);
  }
}
