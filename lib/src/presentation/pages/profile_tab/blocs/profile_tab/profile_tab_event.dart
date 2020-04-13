import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_tab_event.freezed.dart';

@freezed
abstract class ProfileTabEvent with _$ProfileTabEvent {
  const factory ProfileTabEvent.avatarSelected(
    Uint8List avatar,
  ) = AvatarSelected;
  const factory ProfileTabEvent.submit() = Submit;
}
