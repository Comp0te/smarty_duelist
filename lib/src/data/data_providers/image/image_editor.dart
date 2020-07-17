import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_editor/image_editor.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show IImageEditorDataProvider, ImageFailure, ImageEditorFailure;

@Injectable(as: IImageEditorDataProvider)
@lazySingleton
@immutable
class ImageEditorDataProvider implements IImageEditorDataProvider {
  @override
  Future<Either<ImageFailure, Uint8List>> editImage(
    Uint8List imageData, [
    Object editorOptions,
  ]) async {
    try {
      if (editorOptions is ImageEditorOption &&
          editorOptions.options.isNotEmpty) {
        final editedImage = await ImageEditor.editImage(
          image: imageData,
          imageEditorOption: editorOptions,
        );

        return Right(editedImage);
      }

      return Right(imageData);
    } on PlatformException catch (exp) {
      return Left(ImageEditorFailure(exp));
    }
  }
}
// TODO add additional edit options
