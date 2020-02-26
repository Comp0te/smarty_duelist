import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/index.dart'
    show
        AuthCredentialsProviders,
        AuthFailure,
        IAuthDataProvider,
        IAuthRepository;

@immutable
class AuthRepository implements IAuthRepository {
  final IAuthDataProvider authDataProvider;

  const AuthRepository({
    @required this.authDataProvider,
  });

  @override
  Future<Either<AuthFailure, AuthResult>> signInWithEmail({
    String email,
    String password,
  }) async {
    try {
      return Right(await authDataProvider.signInWithEmail(
        email: email,
        password: password,
      ));
    } on AuthException catch (e) {
      return Left(AuthFailure.fromAuthException(e));
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
      return Left(AuthFailure.fromAuthException(e));
    }
  }
}
