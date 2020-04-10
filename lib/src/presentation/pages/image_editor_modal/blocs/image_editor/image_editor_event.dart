import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image_editor_event.freezed.dart';

@freezed
abstract class ImageEditorEvent with _$ImageEditorEvent {
  const factory ImageEditorEvent.selectFromLibrary() = SelectFromLibrary;
  const factory ImageEditorEvent.selectFromCamera() = SelectFromCamera;
  const factory ImageEditorEvent.edit() = Edit;
  const factory ImageEditorEvent.rotateLeft() = RotateLeft;
  const factory ImageEditorEvent.rotateRight() = RotateRight;
  const factory ImageEditorEvent.flip() = Flip;
  const factory ImageEditorEvent.restore() = Restore;
}
