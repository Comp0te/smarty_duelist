import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';
import 'package:smarty_duelist/src/domain/user/user.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  StreamSubscription<User> _onAuthStateChanged;

  AuthBloc({
    @required this.authRepository,
  }) : assert(authRepository != null) {
    _subscribeToAuthStateChanged();
  }

  @override
  AuthState get initialState => const AuthInitializing();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      signedOut: () async* {
        yield const AuthUnauthenticated();
      },
      signedIn: (user) async* {
        yield AuthAuthenticated(user);
      },
    );
  }

  @override
  Future<void> close() {
    _onAuthStateChanged.cancel();
    return super.close();
  }

  StreamSubscription<User> _subscribeToAuthStateChanged() {
    return _onAuthStateChanged =
        authRepository.onAuthStateChanged().listen((user) {
      if (user == null) {
        add(const SignedOut());
      } else {
        add(SignedIn(user));
      }
    });
  }
}

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signedIn(User user) = SignedIn;
  const factory AuthEvent.signedOut() = SignedOut;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authInitializing() = AuthInitializing;
  const factory AuthState.authAuthenticated(User user) = AuthAuthenticated;
  const factory AuthState.authUnauthenticated() = AuthUnauthenticated;
}
