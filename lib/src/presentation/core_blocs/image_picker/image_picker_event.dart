import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image_picker_event.freezed.dart';

@freezed
abstract class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.selectFromLibrary() = SelectFromLibrary;
  const factory ImagePickerEvent.selectFromCamera() = SelectFromCamera;
}
