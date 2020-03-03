import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AppStarted;
  const factory AuthEvent.signedIn({@required FirebaseUser user}) = SignedIn;
  const factory AuthEvent.signedOut() = SignedOut;
}
