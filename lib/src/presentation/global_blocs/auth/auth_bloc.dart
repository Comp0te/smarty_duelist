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
  AuthState get initialState => const AuthInit();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    event.map(
      appStarted: (value) => _mapAppStartedToState(value),
      signInWithCredential: (value) => _mapSignInWithCredentialToState(value),
      signInWithEmail: (value) => _mapSignInWithEmailToState(value),
      signOut: (value) => _mapSignOutToState(value),
    );
  }

  Stream<AuthState> _mapAppStartedToState(AppStarted event) async* {
    yield const AuthLoading();

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
    yield const AuthLoading();

    final failureOrAuth = await authRepository.signInWithCredentials(
      provider: event.provider,
    );

    yield failureOrAuth.fold(
      (failure) => AuthError(failure: failure),
      (auth) => AuthAuthenticated(user: auth.user),
    );
  }

  Stream<AuthState> _mapSignInWithEmailToState(SignInWithEmail event) async* {
    yield const AuthLoading();

    final failureOrAuth = await authRepository.signInWithEmail(
      email: event.email,
      password: event.password,
    );

    yield failureOrAuth.fold(
      (failure) => AuthError(failure: failure),
      (auth) => AuthAuthenticated(user: auth.user),
    );
  }

  Stream<AuthState> _mapSignOutToState(SignOut event) async* {
    yield const AuthLoading();

//    await secureStorageRepository.deleteToken();
//    await authRepository.logout();

    yield const AuthUnauthenticated();
  }
}
