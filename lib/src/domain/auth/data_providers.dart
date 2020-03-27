import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

import 'entities/entities.dart';

abstract class IAuthDataProvider {
  Future<Either<AuthFailure, User>> signInWithGoogle();
  Future<Either<AuthFailure, User>> signInWithFacebook();
  Future<Either<AuthFailure, User>> signInWithApple();
  Future<Either<AuthFailure, User>> signInWithEmail({
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, User>> signUpWithEmail({
    @required String email,
    @required String password,
  });
  Future<void> signOut();
  Future<Option<User>> getCurrentUser();
  Stream<User> onAuthStateChanged();
  Future<Either<AuthFailure, Unit>> sendResetPassword({@required String email});
  Future<Either<AuthFailure, Unit>> confirmResetPassword({
    @required String code,
    @required String newPassword,
  });
  Future<void> configureAuthLanguage(SupportedLanguages languageTag);
  Future<Either<AuthFailure, List<String>>> fetchSignInMethodsForEmail(
    String email,
  );
}
