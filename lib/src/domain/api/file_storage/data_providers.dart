import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'entities/entities.dart';
import 'failures/failures.dart';

abstract class IFileStorageDataProvider {
  Future<Either<FileStorageFailure, Stream<UploadTaskEvent>>> uploadData(
    Uint8List data,
    String path, {
    String cacheControl,
    String mimeType,
  });
}
