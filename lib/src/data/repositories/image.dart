import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show
        Camera,
        IImageEditorDataProvider,
        IImagePickerDataProvider,
        IImageRepository,
        ImageFailure;

@RegisterAs(IImageRepository)
@singleton
@immutable
class ImageRepository implements IImageRepository {
  final IImagePickerDataProvider imagePickerDataProvider;
  final IImageEditorDataProvider imageEditorDataProvider;

  const ImageRepository({
    @required this.imagePickerDataProvider,
    @required this.imageEditorDataProvider,
  });

  @override
  Future<Either<ImageFailure, Uint8List>> getGalleryImage() {
    return imagePickerDataProvider.getGalleryImage();
  }

  @override
  Future<Either<ImageFailure, Uint8List>> getPhoto([Camera camera]) {
    return imagePickerDataProvider.getPhoto(camera);
  }

  @override
  Future<Either<ImageFailure, Option<Uint8List>>> retrieveAndroidLostData() {
    return imagePickerDataProvider.retrieveAndroidLostData();
  }

  @override
  Future<Either<ImageFailure, Uint8List>> editImage(
    Uint8List imageData, [
    Object editorOptions,
  ]) {
    return imageEditorDataProvider.editImage(imageData, editorOptions);
  }
}
