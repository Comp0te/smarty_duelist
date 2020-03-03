import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show AuthCredentialsProviders, IAuthRepository;
import 'bloc.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;
  final fbKey = GlobalKey<FormBuilderState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();

  SignInBloc({@required IAuthRepository authRepository})
      : assert(authRepository != null),
        _authRepository = authRepository;

  @override
  SignInState get initialState => const Init();

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      signInWithGoogle: (event) => _mapSignInWithCredentialsToState(
        event,
        AuthCredentialsProviders.google,
      ),
      signInWithFacebook: (event) => _mapSignInWithCredentialsToState(
        event,
        AuthCredentialsProviders.facebook,
      ),
      signInWithApple: (event) => _mapSignInWithCredentialsToState(
        event,
        AuthCredentialsProviders.apple,
      ),
      signInWithEmail: (event) => _mapSignInWithEmailToState(event),
    );
  }

  Stream<SignInState> _mapSignInWithCredentialsToState(
    SignInEvent event,
    AuthCredentialsProviders provider,
  ) async* {
    yield const Loading();

    final failureOrSignIn = await _authRepository.signInWithCredentials(
      provider: provider,
    );

    yield failureOrSignIn.fold(
      (failure) => Error(failure: failure),
      (auth) => Success(user: auth.user),
    );
  }

  Stream<SignInState> _mapSignInWithEmailToState(SignInWithEmail event) async* {
    if (fbKey.currentState.validate()) {
      yield const Loading();

      final failureOrSignIn = await _authRepository.signInWithEmail(
        email: emailController.text,
        password: passwordController.text,
      );

      yield failureOrSignIn.fold(
        (failure) => Error(failure: failure),
        (auth) => Success(user: auth.user),
      );
    } else if (state is! ValidationShowed) {
      yield const ValidationShowed();
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    return super.close();
  }
}
