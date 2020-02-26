import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/index.dart' show IAuthRepository;
import 'bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;

  AuthBloc({
    @required this.authRepository,
  }) : assert(authRepository != null);

  @override
  AuthState get initialState => AuthInit();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState(event);
    } else if (event is SignInWithCredential) {
      yield* _mapSignInWithCredentialToState(event);
    } else if (event is SignInWithEmail) {
      yield* _mapSignInWithEmailToState(event);
    } else if (event is LoggedOut) {
      yield* _mapLoggedOutToState(event);
    }
  }

  Stream<AuthState> _mapAppStartedToState(AppStarted event) async* {
    yield AuthLoading();

//    authRepository.addTokenInterceptor(
//        secureStorageRepository: secureStorageRepository,
//        onLogout: () {
//          add(LoggedOut());
//        });
//
//    final token = await secureStorageRepository.getToken();
//
//    if (token != null) {
//      try {
//        await authRepository.verifyToken(Token(token));
//
//        yield AuthAuthenticated();
//      } on Exception catch (_) {
//        add(LoggedOut());
//      }
//    } else {
//      yield AuthUnauthenticated();
//    }
  }

  Stream<AuthState> _mapSignInWithCredentialToState(
    SignInWithCredential event,
  ) async* {
    yield AuthLoading();

    final failureOrAuth = await authRepository.signInWithCredentials(
      provider: event.provider,
    );

    yield failureOrAuth.fold(
      (failure) => AuthError(message: failure.message),
      (auth) => AuthAuthenticated(user: auth.user),
    );
  }

  Stream<AuthState> _mapSignInWithEmailToState(SignInWithEmail event) async* {
    yield AuthLoading();

    final failureOrAuth = await authRepository.signInWithEmail(
      email: event.email,
      password: event.password,
    );

    yield failureOrAuth.fold(
      (failure) => AuthError(message: failure.message),
      (auth) => AuthAuthenticated(user: auth.user),
    );
  }

  Stream<AuthState> _mapLoggedOutToState(LoggedOut event) async* {
    yield AuthLoading();

//    await secureStorageRepository.deleteToken();
//    await authRepository.logout();

    yield AuthUnauthenticated();
  }
}
