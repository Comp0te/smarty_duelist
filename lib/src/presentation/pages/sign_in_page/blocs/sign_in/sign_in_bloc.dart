import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';
import 'package:smarty_duelist/src/domain/user/user.dart';

part 'sign_in_bloc.freezed.dart';

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

    final signInEither = await _authRepository.signInWithCredentials(
      provider: provider,
    );

    yield signInEither.fold($SignInState.error, $SignInState.success);
  }

  Stream<SignInState> _mapSignInWithEmailToState(SignInWithEmail event) async* {
    if (fbKey.currentState.validate()) {
      yield const Loading();

      final signInEither = await _authRepository.signInWithEmail(
        email: emailController.text,
        password: passwordController.text,
      );

      yield signInEither.fold($SignInState.error, $SignInState.success);
    } else if (state is! ValidationShowed) {
      yield const ValidationShowed();
    }
  }

  @override
  Future<void> close() {
    fbKey.currentState?.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    return super.close();
  }
}

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogle;
  const factory SignInEvent.signInWithFacebook() = SignInWithFacebook;
  const factory SignInEvent.signInWithApple() = SignInWithApple;
  const factory SignInEvent.signInWithEmail() = SignInWithEmail;
}

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.init() = Init;
  const factory SignInState.validationShowed() = ValidationShowed;
  const factory SignInState.loading() = Loading;
  const factory SignInState.success(User user) = Success;
  const factory SignInState.error(AuthFailure failure) = Error;
}
