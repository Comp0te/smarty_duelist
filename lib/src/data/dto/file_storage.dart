import 'package:firebase_storage/firebase_storage.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show UploadTaskEvent, UploadTaskEventType;

extension StorageUploadTaskX on StorageUploadTask {
  Stream<UploadTaskEvent> toDomainUploadTaskStream() {
    return this != null
        ? events.map((event) => UploadTaskEvent(
              type: _getUploadTaskEventType(
                isComplete: isComplete,
                isInProgress: isInProgress,
                isSuccessful: isSuccessful,
                error: event.snapshot.error,
              ),
              totalByteCount: event.snapshot.totalByteCount,
              bytesTransferred: event.snapshot.bytesTransferred,
            ))
        : null;
  }
}

UploadTaskEventType _getUploadTaskEventType({
  bool isComplete,
  bool isInProgress,
  bool isSuccessful,
  int error,
}) {
  if (isInProgress) return UploadTaskEventType.progress;
  if (isComplete && isSuccessful) return UploadTaskEventType.success;
  if (error != null) return UploadTaskEventType.failure;

  return null;
}
