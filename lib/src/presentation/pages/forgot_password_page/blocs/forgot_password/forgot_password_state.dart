import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/domain.dart' show AuthFailure;

part 'forgot_password_state.freezed.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.init() = Init;
  const factory ForgotPasswordState.validationShowed() = ValidationShowed;
  const factory ForgotPasswordState.loading() = Loading;
  const factory ForgotPasswordState.success() = Success;
  const factory ForgotPasswordState.error({@required AuthFailure failure}) = Error;
}
