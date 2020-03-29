import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
    @required String email,
    @required String name,
    String photoUrl,
    DateTime creationTimestamp, // 1584627891822
    DateTime lastSignInTimestamp, // 1585321727664
  }) = _User;
}
