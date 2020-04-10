import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/api/api.dart';

part 'image_editor_state.freezed.dart';

@freezed
abstract class ImageEditorState with _$ImageEditorState {
  const factory ImageEditorState.init() = Init;
  const factory ImageEditorState.loading() = Loading;
  const factory ImageEditorState.imageSelected(
    Uint8List imageData,
  ) = ImageSelected;
  const factory ImageEditorState.imageEdited(
    Uint8List imageData,
  ) = ImageEdited;
  const factory ImageEditorState.error(ImageFailure failure) = Error;
}
