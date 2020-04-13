import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_tab_state.freezed.dart';

@freezed
abstract class ProfileTabState with _$ProfileTabState {
  const factory ProfileTabState({
    Uint8List avatar,
    String name,
  }) = _ProfileTabState;
}
