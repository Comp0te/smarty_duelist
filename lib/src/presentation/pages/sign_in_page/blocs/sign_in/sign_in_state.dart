import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';

part 'sign_in_state.freezed.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.init() = Init;
  const factory SignInState.validationShowed() = ValidationShowed;
  const factory SignInState.loading() = Loading;
  const factory SignInState.success({@required User user}) = Success;
  const factory SignInState.error({@required AuthFailure failure}) = Error;
}
