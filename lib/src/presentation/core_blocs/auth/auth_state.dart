import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authInit() = AuthInit;
  const factory AuthState.authAuthenticated({
    @required User user,
  }) = AuthAuthenticated;
  const factory AuthState.authUnauthenticated() = AuthUnauthenticated;
  const factory AuthState.authLoading() = AuthLoading;
}
