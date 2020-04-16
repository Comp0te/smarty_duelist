import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../core/core.dart';

part 'file_storage.freezed.dart';

@freezed
abstract class FileStorageFailure
    with _$FileStorageFailure
    implements IFailure {
  const factory FileStorageFailure.uploadError(
    PlatformException exp,
  ) = UploadError;
  const factory FileStorageFailure.unauthenticated() = Unauthenticated;
  const factory FileStorageFailure.canceled() = Canceled;
}
