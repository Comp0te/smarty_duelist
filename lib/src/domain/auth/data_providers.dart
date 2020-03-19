import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

import 'entities/entities.dart';

abstract class IAuthDataProvider {
  Future<Either<AuthFailure, AuthResult>> signInWithGoogle();
  Future<Either<AuthFailure, AuthResult>> signInWithFacebook();
  Future<Either<AuthFailure, AuthResult>> signInWithApple();
  Future<Either<AuthFailure, AuthResult>> signInWithEmail({
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, AuthResult>> signUpWithEmail({
    @required String email,
    @required String password,
  });
  Future<void> signOut();
  Future<Option<FirebaseUser>> getCurrentUser();
  Stream<FirebaseUser> onAuthStateChanged();
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
