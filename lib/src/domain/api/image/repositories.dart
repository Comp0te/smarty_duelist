import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'data_providers.dart';
import 'failures/failures.dart';

abstract class IImageRepository {
  Future<Either<ImageFailure, Uint8List>> getPhoto(Camera camera);

  Future<Either<ImageFailure, Uint8List>> getGalleryImage();

  Future<Either<ImageFailure, Option<Uint8List>>> retrieveAndroidLostData();

  Future<Either<ImageFailure, Uint8List>> editImage(
    Uint8List imageData, [
    Object editorOptions,
  ]);
}
