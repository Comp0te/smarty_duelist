import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show IAuthRepository, User;

import 'bloc.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  StreamSubscription<User> _onAuthStateChanged;

  AuthBloc({
    @required this.authRepository,
  }) : assert(authRepository != null);

  @override
  AuthState get initialState => const AuthInit();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      appStarted: (event) => _mapAppStartedToState(event),
      signedOut: (event) async* {
        yield const AuthUnauthenticated();
      },
      signedIn: (event) async* {
        yield AuthAuthenticated(event.user);
      },
    );
  }

  Stream<AuthState> _mapAppStartedToState(AppStarted event) async* {
    yield const AuthLoading();

    _onAuthStateChanged = authRepository.onAuthStateChanged().listen((user) {
      if (user == null) {
        add(const SignedOut());
      } else {
        add(SignedIn(user));
      }
    });
  }

  @override
  Future<void> close() {
    _onAuthStateChanged.cancel();
    return super.close();
  }
}
