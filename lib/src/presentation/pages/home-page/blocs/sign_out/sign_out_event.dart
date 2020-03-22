import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sign_out_event.freezed.dart';

@freezed
abstract class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent() = SignOut;
}
