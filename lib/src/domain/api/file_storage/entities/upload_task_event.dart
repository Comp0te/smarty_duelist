import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'upload_task_event.freezed.dart';

enum UploadTaskEventType { progress, success, failure }

@freezed
abstract class UploadTaskEvent implements _$UploadTaskEvent {
  factory UploadTaskEvent({
    final UploadTaskEventType type,
    final int bytesTransferred,
    final int totalByteCount,
  }) = _UploadTaskEvent;
  UploadTaskEvent._();

  String get percent => (bytesTransferred / totalByteCount).toStringAsFixed(2);
}
