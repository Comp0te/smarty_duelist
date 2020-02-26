import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

abstract class IAuthDataProvider {
  Future<AuthResult> signInWithGoogle();
  Future<AuthResult> signInWithFacebook();
  Future<AuthResult> signInWithApple();
  Future<AuthResult> signInWithEmail({
    @required String email,
    @required String password,
  });
}
