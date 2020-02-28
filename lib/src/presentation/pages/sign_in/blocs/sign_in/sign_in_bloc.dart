import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/index.dart' show IAuthRepository;
import 'bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository authRepository;

  SignInBloc({
    @required this.authRepository,
  }) : assert(authRepository != null);

  @override
  SignInState get initialState => const Init();

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    event.map(
      signInWithCredential: (value) => _mapSignInWithCredentialToState(value),
      signInWithEmail: (value) => _mapSignInWithEmailToState(value),
    );
  }

  Stream<SignInState> _mapSignInWithCredentialToState(
    SignInWithCredential event,
  ) async* {
    yield const Loading();

    final failureOrSignIn = await authRepository.signInWithCredentials(
      provider: event.provider,
    );

    yield failureOrSignIn.fold(
      (failure) => Error(failure: failure),
      (auth) => Success(user: auth.user),
    );
  }

  Stream<SignInState> _mapSignInWithEmailToState(SignInWithEmail event) async* {
    yield const Loading();

    final failureOrSignIn = await authRepository.signInWithEmail(
      email: event.email,
      password: event.password,
    );

    yield failureOrSignIn.fold(
      (failure) => Error(failure: failure),
      (auth) => Success(user: auth.user),
    );
  }
}
