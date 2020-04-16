import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../core/core.dart';

part 'image.freezed.dart';

@freezed
abstract class ImageFailure with _$ImageFailure implements IFailure {
  const factory ImageFailure.picker(
    PlatformException exp,
  ) = ImagePickerFailure;
  const factory ImageFailure.maxSizeExceeded(
      double megabyte,
      ) = MaxSizeExceeded;
  const factory ImageFailure.editor(
    PlatformException exp,
  ) = ImageEditorFailure;
}
