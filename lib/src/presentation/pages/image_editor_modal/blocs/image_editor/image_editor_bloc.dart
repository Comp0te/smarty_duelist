import 'package:extended_image/extended_image.dart';
import 'package:flutter/widgets.dart';
import 'package:image_editor/image_editor.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show Camera, IImageRepository;
import 'bloc.dart';

@injectable
class ImageEditorBloc extends Bloc<ImageEditorEvent, ImageEditorState> {
  final IImageRepository _imageRepository;

  final editorKey = GlobalKey<ExtendedImageEditorState>();

  ImageEditorBloc({@required IImageRepository imageRepository})
      : assert(imageRepository != null),
        _imageRepository = imageRepository;

  @override
  ImageEditorState get initialState => const Init();

  @override
  Stream<ImageEditorState> mapEventToState(ImageEditorEvent event) async* {
    yield* event.map(
      selectFromLibrary: (event) async* {
        final imageEither = await _imageRepository.getGalleryImage();

        yield imageEither.fold(
          $ImageEditorState.error,
          $ImageEditorState.imageSelected,
        );
      },
      selectFromCamera: (event) async* {
        final imageEither = await _imageRepository.getPhoto(Camera.front);

        imageEither.fold(
          $ImageEditorState.error,
          $ImageEditorState.imageSelected,
        );
      },
      rotateLeft: (event) async* {
        editorKey.currentState.rotate(right: false);
      },
      rotateRight: (event) async* {
        editorKey.currentState.rotate(right: false);
      },
      flip: (event) async* {
        editorKey.currentState.flip();
      },
      restore: (event) async* {
        editorKey.currentState.reset();
      },
      crop: (event) => _mapCropToState(event),
    );
  }

  Stream<ImageEditorState> _mapCropToState(Crop event) async* {
    final action = editorKey.currentState.editAction;
    final img = editorKey.currentState.rawImageData;

    final cropRect = editorKey.currentState.getCropRect();
    final rotateAngle = action.rotateAngle.toInt();
    final flipHorizontal = action.flipY;
    final flipVertical = action.flipX;

    final options = ImageEditorOption()..addOptions([
      if (action.needCrop) ClipOption.fromRect(cropRect),
      if (action.needFlip)
        FlipOption(
          horizontal: flipHorizontal,
          vertical: flipVertical,
        ),
      if (action.hasRotateAngle) RotateOption(rotateAngle),
    ]);

    final result = await ImageEditor.editImage(
      image: img,
      imageEditorOption: options,
    );

    yield ImageCropped(result);
  }

  @override
  Future<void> close() {
    // ignore: invalid_use_of_protected_member
    editorKey.currentState.dispose();
    return super.close();
  }
}
