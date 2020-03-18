import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.sendResetPassword(
    AuthException exp,
  ) = SendResetPasswordFailure;
  const factory AuthFailure.confirmResetPassword(
    AuthException exp,
  ) = ConfirmResetPasswordFailure;
  const factory AuthFailure.signUpWithEmail(
    AuthException exp,
  ) = SignUpWithEmailFailure;
  const factory AuthFailure.signInWithGoogle(
    AuthException exp,
  ) = SignInWithGoogleFailure;
  const factory AuthFailure.googleAuth(
    PlatformException exp,
  ) = GoogleAuthFailure;
  const factory AuthFailure.signInWithEmail(
    AuthException exp,
  ) = SignInWithEmailFailure;
  const factory AuthFailure.unexpected(
    AuthException exp,
  ) = UnexpectedAuthFailure;
}
