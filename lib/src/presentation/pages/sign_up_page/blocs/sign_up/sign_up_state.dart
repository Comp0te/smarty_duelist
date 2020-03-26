import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/auth/auth.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.init() = Init;
  const factory SignUpState.validationShowed() = ValidationShowed;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success({
    @required FirebaseUser user,
  }) = Success;
  const factory SignUpState.error({@required AuthFailure failure}) = Error;
}
