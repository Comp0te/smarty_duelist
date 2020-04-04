import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';

part 'sign_out_state.freezed.dart';

@freezed
abstract class SignOutState with _$SignOutState {
  const factory SignOutState.init() = Init;
  const factory SignOutState.loading() = Loading;
  const factory SignOutState.success() = Success;
  const factory SignOutState.error({@required AuthFailure failure}) = Error;
}
