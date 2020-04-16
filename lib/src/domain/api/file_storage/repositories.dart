import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'entities/entities.dart';
import 'failures/failures.dart';

abstract class IFileStorageRepository {
  Future<Either<FileStorageFailure, Stream<UploadTaskEvent>>> uploadAvatar(
    Uint8List data,
  );
}
