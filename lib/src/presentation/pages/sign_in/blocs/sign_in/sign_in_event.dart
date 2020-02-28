import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/index.dart'
    show AuthCredentialsProviders;

part 'sign_in_event.freezed.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithCredential(
    AuthCredentialsProviders provider,
  ) = SignInWithCredential;
  const factory SignInEvent.signInWithEmail({
    @required String email,
    @required String password,
  }) = SignInWithEmail;
}
