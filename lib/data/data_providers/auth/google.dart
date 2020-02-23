import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/domain/index.dart';

@immutable
class GoogleAuthDataProvider implements IAuthWithCredentialDataProvider {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth auth;

  const GoogleAuthDataProvider({
    @required this.googleSignIn,
    @required this.auth,
  });

  @override
  Future<AuthResult> signIn() async {
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return auth.signInWithCredential(credential);
  }
}
