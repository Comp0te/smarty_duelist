import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/widgets.dart';
import 'package:image_editor/image_editor.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/api/api.dart';

part 'image_editor_bloc.freezed.dart';

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
    yield* event.when(
      rotateLeft: () async* {
        editorKey.currentState.rotate(right: false);
      },
      rotateRight: () async* {
        editorKey.currentState.rotate(right: false);
      },
      flip: () async* {
        editorKey.currentState.flip();
      },
      restore: () async* {
        editorKey.currentState.reset();
      },
      edit: () => _mapEditToState(),
    );
  }

  Stream<ImageEditorState> _mapEditToState() async* {
    yield const Loading();
    final action = editorKey.currentState.editAction;
    final img = editorKey.currentState.rawImageData;

    final cropRect = editorKey.currentState.getCropRect();
    final rotateAngle = action.rotateAngle.toInt();
    final flipHorizontal = action.flipY;
    final flipVertical = action.flipX;

    final options = ImageEditorOption()
      ..addOptions([
        if (action.needCrop) ClipOption.fromRect(cropRect),
        if (action.needFlip)
          FlipOption(
            horizontal: flipHorizontal,
            vertical: flipVertical,
          ),
        if (action.hasRotateAngle) RotateOption(rotateAngle),
      ]);

    final editorEither = await _imageRepository.editImage(img, options);

    yield editorEither.fold(
      $ImageEditorState.error,
      $ImageEditorState.imageEdited,
    );
  }

  @override
  Future<void> close() {
    // ignore: invalid_use_of_protected_member
    editorKey.currentState?.dispose();
    return super.close();
  }
}

@freezed
abstract class ImageEditorState with _$ImageEditorState {
  const factory ImageEditorState.init() = Init;
  const factory ImageEditorState.loading() = Loading;
  const factory ImageEditorState.imageEdited(
    Uint8List imageData,
  ) = ImageEdited;
  const factory ImageEditorState.error(ImageFailure failure) = Error;
}

@freezed
abstract class ImageEditorEvent with _$ImageEditorEvent {
  const factory ImageEditorEvent.edit() = Edit;
  const factory ImageEditorEvent.rotateLeft() = RotateLeft;
  const factory ImageEditorEvent.rotateRight() = RotateRight;
  const factory ImageEditorEvent.flip() = Flip;
  const factory ImageEditorEvent.restore() = Restore;
}
