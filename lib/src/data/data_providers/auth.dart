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
        FetchSignInMethodsForEmailFailure,
        GoogleAuthFailure,
        IAuthDataProvider,
        SendResetPasswordFailure,
        SignInWithEmailFailure,
        SignInWithGoogleFailure,
        SignUpWithEmailFailure,
        User;

import '../dto/dto.dart';

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
  Future<Option<User>> getCurrentUser() async {
    final user = await auth.currentUser();

    if (user == null) return None();

    return Some(user.toDomainUser());
  }

  @override
  Future<void> signOut() => auth.signOut();

  @override
  Stream<User> onAuthStateChanged() =>
      auth.onAuthStateChanged.map((user) => user.toDomainUser());

  @override
  Future<Either<AuthFailure, Unit>> sendResetPassword({
    @required String email,
  }) async {
    try {
      await auth.sendPasswordResetEmail(email: email);

      return Right(unit);
    } on PlatformException catch (exp) {
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
    } on PlatformException catch (exp) {
      return Left(ConfirmResetPasswordFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, User>> signUpWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      final result = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Right(result.user.toDomainUser());
    } on PlatformException catch (exp) {
      return Left(SignUpWithEmailFailure(exp));
    }
  }

  @override
  Future<void> configureAuthLanguage(SupportedLanguages languageTag) {
    return auth.setLanguageCode(describeEnum(languageTag));
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Right(result.user.toDomainUser());
    } on PlatformException catch (exp) {
      return Left(SignInWithEmailFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) return Left(const CancelledByUser());

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final result = await auth.signInWithCredential(credential);

      return Right(result.user.toDomainUser());
    } on PlatformException catch (exp) {
      if (exp.code == GoogleSignInAccount.kFailedToRecoverAuthError ||
          exp.code == GoogleSignInAccount.kUserRecoverableAuthError) {
        return Left(GoogleAuthFailure(exp));
      }

      return Left(SignInWithGoogleFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, List<String>>> fetchSignInMethodsForEmail(
    String email,
  ) async {
    try {
      final methods = await auth.fetchSignInMethodsForEmail(email: email);

      return Right(methods);
    } on PlatformException catch (_) {
      return Left(const FetchSignInMethodsForEmailFailure());
    }
  }

  @override
  // ignore: missing_return
  Future<Either<AuthFailure, User>> signInWithApple() async {
    // TODO: implement signInWithApple
  }

  @override
  // ignore: missing_return
  Future<Either<AuthFailure, User>> signInWithFacebook() async {
    // TODO: implement signInWithFacebook
  }
}
