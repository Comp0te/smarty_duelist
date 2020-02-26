import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/index.dart'
    show AuthCredentialsProviders;

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AppStarted;
  const factory AuthEvent.signInWithCredential(
    AuthCredentialsProviders provider,
  ) = SignInWithCredential;
  const factory AuthEvent.signInWithEmail({
    @required String email,
    @required String password,
  }) = SignInWithEmail;
  const factory AuthEvent.signOut() = SignOut;
}
