import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../core/core.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure implements IFailure {
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
  const factory AuthFailure.signInWithCredential(
    PlatformException exp,
  ) = SignInWithCredentialFailure;
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
  const factory AuthFailure.accountExistsWithDifferentCredential(
    List<String> possibleAuthMethods,
  ) = AccountExistsWithDifferentCredentialFailure;
  const factory AuthFailure.deleteUser(
    PlatformException exp,
  ) = DeleteUserFailure;
  const factory AuthFailure.changeEmail(
    PlatformException exp,
  ) = ChangeEmailFailure;
  const factory AuthFailure.changePassword(
    PlatformException exp,
  ) = ChangePasswordFailure;
}
