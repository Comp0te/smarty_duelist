import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

abstract class IAuthDataProvider {
  Future<AuthResult> signInWithGoogle();
  Future<AuthResult> signInWithFacebook();
  Future<AuthResult> signInWithApple();
  Future<AuthResult> signInWithEmail({
    @required String email,
    @required String password,
  });
  Future<AuthResult> signUpWithEmail({
    @required String email,
    @required String password,
  });
  Future<void> signOut();
  Future<FirebaseUser> getCurrentUser();
  Stream<FirebaseUser> onAuthStateChanged();
  Future<void> sendResetPassword({@required String email});
  Future<void> confirmResetPassword({
    @required String code,
    @required String newPassword,
  });
  Future<void> configureAuthLanguage(SupportedLanguages languageTag);
}
