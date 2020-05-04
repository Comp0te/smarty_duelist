import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show
        FileStorageFailure,
        IFileStorageDataProvider,
        UploadError,
        UploadTaskEvent;

import '../dto/dto.dart';

@RegisterAs(IFileStorageDataProvider)
@singleton
@immutable
class FirebaseStorageDataProvider implements IFileStorageDataProvider {
  final FirebaseStorage storage;

  const FirebaseStorageDataProvider({
    @required this.storage,
  });

  @override
  Future<Either<FileStorageFailure, Stream<UploadTaskEvent>>> uploadData(
    Uint8List data,
    String path, {
    String cacheControl,
    String mimeType,
  }) async {
    try {
      final task = storage.ref().child(path).putData(
            data,
            StorageMetadata(
              cacheControl: cacheControl,
              contentType: mimeType,
            ),
          );
      return Right(task.toDomainUploadTaskStream());
    } on PlatformException catch (exp) {
      return Left(UploadError(exp));
    }
  }
}
