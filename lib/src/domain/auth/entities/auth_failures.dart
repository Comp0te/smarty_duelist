import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.sendResetPassword(
    PlatformException exp,
  ) = SendResetPasswordFailure;
  const factory AuthFailure.confirmResetPassword(
    PlatformException exp,
  ) = ConfirmResetPasswordFailure;
  const factory AuthFailure.signUpWithEmail(
    PlatformException exp,
  ) = SignUpWithEmailFailure;
  const factory AuthFailure.signInWithGoogle(
    PlatformException exp,
  ) = SignInWithGoogleFailure;
  const factory AuthFailure.googleAuth(
    PlatformException exp,
  ) = GoogleAuthFailure;
  const factory AuthFailure.signInWithEmail(
    PlatformException exp,
  ) = SignInWithEmailFailure;
  const factory AuthFailure.unexpected(
    PlatformException exp,
  ) = UnexpectedAuthFailure;
  const factory AuthFailure.fetchSignInMethodsForEmail() =
      FetchSignInMethodsForEmailFailure;
}
