import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sign_in_event.freezed.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogle;
  const factory SignInEvent.signInWithFacebook() = SignInWithFacebook;
  const factory SignInEvent.signInWithApple() = SignInWithApple;
  const factory SignInEvent.signInWithEmail() = SignInWithEmail;
}
