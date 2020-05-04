import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';
import 'package:smarty_duelist/src/domain/user/user.dart';

part 'sign_up_bloc.freezed.dart';

enum SignUpFormData { email, password, confirmPassword }

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthRepository _authRepository;
  final fbKey = GlobalKey<FormBuilderState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final confirmPasswordController = TextEditingController();
  final confirmPasswordFocusNode = FocusNode();

  SignUpBloc({@required IAuthRepository authRepository})
      : assert(authRepository != null),
        _authRepository = authRepository;

  @override
  SignUpState get initialState => const Init();

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (fbKey.currentState.validate()) {
      yield const Loading();

      final signUpEither = await _authRepository.signUpWithEmail(
        email: emailController.text,
        password: passwordController.text,
      );

      yield signUpEither.fold($SignUpState.error, $SignUpState.success);
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
    confirmPasswordController.dispose();
    confirmPasswordFocusNode.dispose();
    return super.close();
  }
}

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent() = SignUp;
}

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.init() = Init;
  const factory SignUpState.validationShowed() = ValidationShowed;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success(User user) = Success;
  const factory SignUpState.error(AuthFailure failure) = Error;
}
