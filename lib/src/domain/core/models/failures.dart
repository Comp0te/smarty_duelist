import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.auth(AuthException exception) = AuthFailure;
  const factory Failure.unknown(Exception exception) = UnknownFailure;
}
