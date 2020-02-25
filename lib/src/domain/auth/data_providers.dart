import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthWithCredentialDataProvider {
  Future<AuthResult> signIn();
}

abstract class IAuthWithEmailDataProvider {
  Future<AuthResult> signIn({
    String email,
    String password,
  });
}
