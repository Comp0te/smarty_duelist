import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show AuthFailure, CancelledByUser, GoogleAuthFailure;

@lazySingleton
@immutable
class GoogleAuth {
  final GoogleSignIn googleSignIn;

  const GoogleAuth({
    @required this.googleSignIn,
  });

  GoogleSignInAccount get currentUser => googleSignIn.currentUser;

  Future<bool> get isSignedIn => googleSignIn.isSignedIn();

  Future<void> signOut() => googleSignIn.signOut();

  Future<void> disconnect() => googleSignIn.disconnect();

  Stream<GoogleSignInAccount> onAuthStateChanged() =>
      googleSignIn.onCurrentUserChanged;

  /// Tuple of [GoogleSignInAuthentication] and email
  Future<Either<AuthFailure, Tuple2<GoogleSignInAuthentication, String>>>
      signIn() async {
    try {
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) return Left(const CancelledByUser());

      final googleAuth = await googleUser.authentication;

      return Right(tuple2(googleAuth, googleUser.email));
    } on PlatformException catch (exp) {
      return Left(GoogleAuthFailure(exp));
    }
  }
}
