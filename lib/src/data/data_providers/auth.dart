import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/index.dart' show IAuthDataProvider;

@immutable
class AuthDataProvider implements IAuthDataProvider {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth auth;

  const AuthDataProvider({
    @required this.googleSignIn,
    @required this.auth,
  });

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
  Future<AuthResult> signInWithEmail({String email, String password}) {
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
