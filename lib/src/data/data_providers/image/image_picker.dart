import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:image_picker/image_picker.dart';

import 'package:smarty_duelist/src/data/dto/dto.dart' show validateImageData;
import 'package:smarty_duelist/src/domain/domain.dart'
    show Camera, IImagePickerDataProvider, ImageFailure, ImagePickerFailure;

@Injectable(as: IImagePickerDataProvider)
@lazySingleton
@immutable
class ImagePickerDataProvider implements IImagePickerDataProvider {
  @override
  Future<Either<ImageFailure, Uint8List>> getPhoto([Camera camera]) async {
    try {
      final file = await ImagePicker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice:
            camera == Camera.front ? CameraDevice.front : CameraDevice.front,
      );

      return validateImageData(await file.readAsBytes());
    } on PlatformException catch (exp) {
      return Left(ImagePickerFailure(exp));
    }
  }

  @override
  Future<Either<ImageFailure, Uint8List>> getGalleryImage() async {
    try {
      final file = await ImagePicker.pickImage(
        source: ImageSource.gallery,
      );

      return validateImageData(await file.readAsBytes());
    } on PlatformException catch (exp) {
      return Left(ImagePickerFailure(exp));
    }
  }

  @override
  Future<Either<ImageFailure, Option<Uint8List>>>
      retrieveAndroidLostData() async {
    if (Platform.isAndroid) {
      try {
        final response = await ImagePicker.retrieveLostData();

        if (!response.isEmpty && response.file != null) {
          return Right(Some(await response.file.readAsBytes()));
        } else {
          return const Right(None());
        }
      } on PlatformException catch (exp) {
        return Left(ImagePickerFailure(exp));
      }
    }

    return const Right(None());
  }
}
