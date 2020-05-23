import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;
import 'package:smarty_duelist/src/domain/domain.dart'
    show
        AccountExistsWithDifferentCredentialFailure,
        AuthFailure,
        ChangeEmailFailure,
        ChangePasswordFailure,
        ConfirmResetPasswordFailure,
        FetchSignInMethodsForEmailFailure,
        IAuthDataProvider,
        SendResetPasswordFailure,
        SignInWithCredentialFailure,
        SignInWithEmailFailure,
        SignUpWithEmailFailure,
        User;

import '../../dto/dto.dart';
import 'google_auth.dart';

@RegisterAs(IAuthDataProvider)
@singleton
@immutable
class FirebaseAuthProvider implements IAuthDataProvider {
  final GoogleAuth googleAuth;
  final FirebaseAuth auth;

  const FirebaseAuthProvider({
    @required this.googleAuth,
    @required this.auth,
  });

  @override
  Future<void> signOut() async {
    await googleAuth.signOut();

    return auth.signOut();
  }

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

      await result.user.sendEmailVerification();

      return Right(result.user.toDomainUser());
    } on PlatformException catch (exp) {
      return Left(SignUpWithEmailFailure(exp));
    }
  }

  // TODO reauthenticateWithCredential
  // TODO updateProfile - display name and photoUrl

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
    final eitherGoogleAuth = await googleAuth.signIn();

    return eitherGoogleAuth.fold(
      (failure) => Left(failure),
      (googleAuth) async {
        final credential = GoogleAuthProvider.getCredential(
          idToken: googleAuth.value1.idToken,
          accessToken: googleAuth.value1.accessToken,
        );

        final eitherResult = await _signInWithCredential(
          credential,
          googleAuth.value2,
        );

        return eitherResult.fold(
          (failure) => Left(failure),
          (user) => Right(user),
        );
      },
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> changeEmail(String email) async {
    try {
      final user = await auth.currentUser();

      await user?.updateEmail(email);

      return Right(unit);
    } on PlatformException catch (exp) {
      return Left(ChangeEmailFailure(exp));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(String password) async {
    try {
      final user = await auth.currentUser();

      await user?.updatePassword(password);

      return Right(unit);
    } on PlatformException catch (exp) {
      return Left(ChangePasswordFailure(exp));
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

  Future<Either<AuthFailure, List<String>>> _fetchSignInMethodsForEmail(
    String email,
  ) async {
    try {
      final methods = await auth.fetchSignInMethodsForEmail(email: email);

      return Right(methods);
    } on PlatformException catch (_) {
      return const Left(FetchSignInMethodsForEmailFailure());
    }
  }

  Future<Either<AuthFailure, User>> _signInWithCredential(
    AuthCredential credential,
    String email,
  ) async {
    try {
      final result = await auth.signInWithCredential(credential);

      return Right(result.user.toDomainUser());
    } on PlatformException catch (exp) {
      if (exp.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        (await _fetchSignInMethodsForEmail(email)).fold(
          (failure) => Left(failure),
          (methods) {
            return Left(AccountExistsWithDifferentCredentialFailure(methods));
          },
        );
      }

      return Left(SignInWithCredentialFailure(exp));
    }
  }
}
