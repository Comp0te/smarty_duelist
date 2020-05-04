import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../core/core.dart';

part 'user_failures.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure implements IFailure {
  const factory UserFailure.updateUser(
    PlatformException exp,
  ) = UpdateUserFailure;
  const factory UserFailure.deleteUser(
    PlatformException exp,
  ) = DeleteUserFailure;
}
