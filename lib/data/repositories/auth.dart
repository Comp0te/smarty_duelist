import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/domain/index.dart';

@immutable
class AuthRepository implements IAuthRepository {
  final IAuthWithCredentialDataProvider googleAuthDataProvider;
  final IAuthWithCredentialDataProvider facebookAuthDataProvider;
  final IAuthWithCredentialDataProvider appleAuthDataProvider;
  final IAuthWithEmailDataProvider emailAuthDataProvider;

  const AuthRepository({
    @required this.googleAuthDataProvider,
    @required this.facebookAuthDataProvider,
    @required this.appleAuthDataProvider,
    @required this.emailAuthDataProvider,
  });

  @override
  Future<Either<Failure, AuthResult>> signInWithEmail({
    String email,
    String password,
  }) async {
    try {
      return Right(await emailAuthDataProvider.signIn(
        email: email,
        password: password,
      ));
    } on AuthException catch (e) {
      return Left(AuthFailure.fromAuthException(e));
    }
  }

  @override
  Future<Either<Failure, AuthResult>> signInWithCredentials({
    @required AuthCredentialsProviders provider,
  }) async {
    try {
      switch (provider) {
        case AuthCredentialsProviders.google:
          return Right(await googleAuthDataProvider.signIn());
        case AuthCredentialsProviders.facebook:
          return Right(await facebookAuthDataProvider.signIn());
        case AuthCredentialsProviders.apple:
          return Right(await appleAuthDataProvider.signIn());
        default:
          return null;
      }
    } on AuthException catch (e) {
      return Left(AuthFailure.fromAuthException(e));
    }
  }
}
