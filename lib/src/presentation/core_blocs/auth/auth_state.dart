import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/domain.dart' show AuthFailure;

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authInit() = AuthInit;
  const factory AuthState.authAuthenticated({
    @required FirebaseUser user,
  }) = AuthAuthenticated;
  const factory AuthState.authUnauthenticated() = AuthUnauthenticated;
  const factory AuthState.authLoading() = AuthLoading;
  const factory AuthState.authError({
    @required AuthFailure failure,
  }) = AuthError;
}