import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;
import 'package:smarty_duelist/src/domain/domain.dart'
    show
        AuthFailure,
        CancelledByUser,
        ConfirmResetPasswordFailure,
        GoogleAuthFailure,
        IAuthDataProvider,
        SendResetPasswordFailure,
        SignInWithEmailFailure,
        SignInWithGoogleFailure,
        SignUpWithEmailFailure;

@RegisterAs(IAuthDataProvider)
@singleton
@immutable
class AuthDataProvider implements IAuthDataProvider {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth auth;

  const AuthDataProvider({
    @required this.googleSignIn,
    @required this.auth,
  });

  @override
  Future<Option<FirebaseUser>> getCurrentUser() async {
    final user = await auth.currentUser();

    if (user == null) return None();

    return Some(user);
  }

  @override
  Future<void> signOut() => auth.signOut();

  @override
  Stream<FirebaseUser> onAuthStateChanged() => auth.onAuthStateChanged;

  @override
  Future<Either<AuthFailure, Unit>> sendResetPassword({
    @required String email,
  }) async {
    try {
      await auth.sendPasswordResetEmail(email: email);

      return Right(unit);
    } on AuthException catch (exp) {
      return Left(SendResetPasswordFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmResetPassword({
    @required String code,
    @required String newPassword,
  }) async {
    try {
      await auth.confirmPasswordReset(code, newPassword);

      return Right(unit);
    } on AuthException catch (exp) {
      return Left(ConfirmResetPasswordFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signUpWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      final result = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Right(result);
    } on AuthException catch (exp) {
      return Left(SignUpWithEmailFailure(exp));
    }
  }

  @override
  Future<void> configureAuthLanguage(SupportedLanguages languageTag) {
    return auth.setLanguageCode(describeEnum(languageTag));
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signInWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Right(result);
    } on AuthException catch (exp) {
      return Left(SignInWithEmailFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, AuthResult>> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) return Left(const CancelledByUser());

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final result = await auth.signInWithCredential(credential);

      return Right(result);
    } on AuthException catch (exp) {
      return Left(SignInWithGoogleFailure(exp));
    } on PlatformException catch (exp) {
      return Left(GoogleAuthFailure(exp));
    }
  }

  @override
  // ignore: missing_return
  Future<Either<AuthFailure, AuthResult>> signInWithApple() async {
    // TODO: implement signInWithApple
  }

  @override
  // ignore: missing_return
  Future<Either<AuthFailure, AuthResult>> signInWithFacebook() async {
    // TODO: implement signInWithFacebook
  }
}
