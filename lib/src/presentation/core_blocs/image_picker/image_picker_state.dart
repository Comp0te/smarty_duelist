import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/api/api.dart';

part 'image_picker_state.freezed.dart';

@freezed
abstract class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.init() = Init;
  const factory ImagePickerState.loading() = Loading;
  const factory ImagePickerState.imageSelected(
    Uint8List imageData,
  ) = ImageSelected;
  const factory ImagePickerState.error(ImageFailure failure) = Error;
}
