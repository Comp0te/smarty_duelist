import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:smarty_duelist/src/core/constants/constants.dart';

import 'package:smarty_duelist/src/domain/domain.dart' show IAuthRepository;
import 'bloc.dart';

enum ForgotPasswordFormData { email, password, confirmPassword }

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuthRepository _authRepository;
  final fbKey = GlobalKey<FormBuilderState>();
  final emailController = TextEditingController();

  ForgotPasswordBloc({@required IAuthRepository authRepository})
      : assert(authRepository != null),
        _authRepository = authRepository;

  @override
  ForgotPasswordState get initialState => const Init();

  @override
  Stream<ForgotPasswordState> mapEventToState(
      ForgotPasswordEvent event) async* {
    if (fbKey.currentState.validate()) {
      yield const Loading();

      final failureOrForgotPassword = await _authRepository.sendResetPassword(
        email: emailController.text,
        languageTag: SupportedLanguages.ru,
      );

      yield failureOrForgotPassword.fold(
        (failure) => Error(failure: failure),
        (auth) => const Success(),
      );
    } else if (state is! ValidationShowed) {
      yield const ValidationShowed();
    }
  }

  @override
  Future<void> close() {
    fbKey.currentState?.dispose();
    emailController.dispose();
    return super.close();
  }
}
