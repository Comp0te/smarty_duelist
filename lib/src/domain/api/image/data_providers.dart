import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'failures/failures.dart';

enum Camera { front, back }

abstract class IImagePickerDataProvider {
  Future<Either<ImageFailure, Uint8List>> getPhoto(Camera camera);

  Future<Either<ImageFailure, Uint8List>> getGalleryImage();

  Future<Either<ImageFailure, Option<Uint8List>>> retrieveAndroidLostData();
}

abstract class IImageEditorDataProvider {
  Future<Either<ImageFailure, Uint8List>> editImage(
    Uint8List imageData, [
    Object editorOptions,
  ]);
}
