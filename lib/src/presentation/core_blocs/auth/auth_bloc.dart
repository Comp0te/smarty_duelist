import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart' show IAuthRepository;
import 'bloc.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  StreamSubscription<FirebaseUser> _onAuthStateChanged;

  AuthBloc({
    @required this.authRepository,
  }) : assert(authRepository != null);

  @override
  AuthState get initialState => const AuthInit();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      appStarted: (event) => _mapAppStartedToState(event),
      signedOut: (event) => _mapSignedOutToState(event),
      signedIn: (event) => _mapSignedInToState(event),
    );
  }

  Stream<AuthState> _mapAppStartedToState(AppStarted event) async* {
    yield const AuthLoading();

    _onAuthStateChanged = authRepository.onAuthStateChanged().listen((user) {
      if (user == null) {
        add(const SignedOut());
      } else {
        add(SignedIn(user: user));
      }
    });
  }

  Stream<AuthState> _mapSignedInToState(SignedIn event) async* {
    yield AuthAuthenticated(user: event.user);
  }

  Stream<AuthState> _mapSignedOutToState(SignedOut event) async* {
    yield const AuthUnauthenticated();
  }

  @override
  Future<void> close() {
    _onAuthStateChanged.cancel();
    return super.close();
  }
}
