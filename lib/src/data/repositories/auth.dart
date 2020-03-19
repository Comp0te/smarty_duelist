import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/constants/languages.dart'
    show SupportedLanguages;
import 'package:smarty_duelist/src/domain/domain.dart'
    show
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
  }) {
    return authDataProvider.signInWithEmail(
      email: email,
      password: password,
    );
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signInWithCredentials({
    @required AuthCredentialsProviders provider,
  }) async {
    switch (provider) {
      case AuthCredentialsProviders.google:
        return authDataProvider.signInWithGoogle();
      case AuthCredentialsProviders.facebook:
        return authDataProvider.signInWithApple();
      case AuthCredentialsProviders.apple:
        return authDataProvider.signInWithApple();
      default:
        return null;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmResetPassword({
    String code,
    String newPassword,
  }) {
    return authDataProvider.confirmResetPassword(
      code: code,
      newPassword: newPassword,
    );
  }

  @override
  Future<Option<FirebaseUser>> getCurrentUser() =>
      authDataProvider.getCurrentUser();

  @override
  Stream<FirebaseUser> onAuthStateChanged() {
    return authDataProvider.onAuthStateChanged();
  }

  @override
  Future<Either<AuthFailure, Unit>> sendResetPassword({
    @required String email,
    SupportedLanguages languageTag = SupportedLanguages.ru,
  }) async {
    await authDataProvider.configureAuthLanguage(languageTag);

    return authDataProvider.sendResetPassword(email: email);
  }

  @override
  Future<void> signOut() async {
    await authDataProvider.signOut();
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signUpWithEmail({
    @required String email,
    @required String password,
  }) {
    return authDataProvider.signUpWithEmail(
      email: email,
      password: password,
    );
  }

  @override
  Future<Either<AuthFailure, List<String>>> fetchSignInMethodsForEmail(
    String email,
  ) {
    return authDataProvider.fetchSignInMethodsForEmail(email);
  }
}
