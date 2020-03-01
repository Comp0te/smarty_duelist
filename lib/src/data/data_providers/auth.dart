import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/index.dart' show SupportedLanguages;
import 'package:smarty_duelist/src/domain/index.dart' show IAuthDataProvider;

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
  Future<FirebaseUser> getCurrentUser() => auth.currentUser();

  @override
  Future<void> signOut() => auth.signOut();

  @override
  Stream<FirebaseUser> onAuthStateChanged() => auth.onAuthStateChanged;

  @override
  Future<void> sendResetPassword({@required String email}) =>
      auth.sendPasswordResetEmail(email: email);

  @override
  Future<void> confirmResetPassword({
    @required String code,
    @required String newPassword,
  }) =>
      auth.confirmPasswordReset(code, newPassword);

  @override
  Future<AuthResult> signUpWithEmail({
    @required String email,
    @required String password,
  }) =>
      auth.createUserWithEmailAndPassword(email: email, password: password);

  @override
  Future<void> configureAuthLanguage(SupportedLanguages languageTag) {
    return auth.setLanguageCode(describeEnum(languageTag));
  }

  @override
  Future<AuthResult> signInWithGoogle() async {
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return auth.signInWithCredential(credential);
  }

  @override
  Future<AuthResult> signInWithApple() async {
    // TODO: implement signInWithApple
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return auth.signInWithCredential(credential);
  }

  @override
  Future<AuthResult> signInWithEmail({
    @required String email,
    @required String password,
  }) {
    return auth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<AuthResult> signInWithFacebook() async {
    // TODO: implement signInWithFacebook
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return auth.signInWithCredential(credential);
  }
}
