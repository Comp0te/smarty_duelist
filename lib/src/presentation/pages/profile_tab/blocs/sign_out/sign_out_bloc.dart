import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';

part 'sign_out_bloc.freezed.dart';

@injectable
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  final IAuthRepository _authRepository;

  SignOutBloc({@required IAuthRepository authRepository})
      : assert(authRepository != null),
        _authRepository = authRepository;

  @override
  SignOutState get initialState => const Init();

  @override
  Stream<SignOutState> mapEventToState(SignOutEvent event) async* {
    yield const Loading();

    await _authRepository.signOut();

    yield const Success();
  }
}

@freezed
abstract class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent() = SignOut;
}

@freezed
abstract class SignOutState with _$SignOutState {
  const factory SignOutState.init() = Init;
  const factory SignOutState.loading() = Loading;
  const factory SignOutState.success() = Success;
  const factory SignOutState.error(AuthFailure failure) = Error;
}
