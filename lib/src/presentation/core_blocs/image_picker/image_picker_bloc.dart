import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/domain/api/api.dart';

part 'image_picker_bloc.freezed.dart';

@injectable
class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final IImageRepository _imageRepository;

  ImagePickerBloc({@required IImageRepository imageRepository})
      : assert(imageRepository != null),
        _imageRepository = imageRepository;

  @override
  ImagePickerState get initialState => const Init();

  @override
  Stream<ImagePickerState> mapEventToState(ImagePickerEvent event) async* {
    yield* event.map(
      selectFromLibrary: (event) async* {
        final imageEither = await _imageRepository.getGalleryImage();

        yield imageEither.fold(
          $ImagePickerState.error,
          $ImagePickerState.imageSelected,
        );
      },
      selectFromCamera: (event) async* {
        final imageEither = await _imageRepository.getPhoto(Camera.front);

        yield imageEither.fold(
          $ImagePickerState.error,
          $ImagePickerState.imageSelected,
        );
      },
      clear: (_) async* {
        yield const Init();
      },
      selectEditedImage: (SelectEditedImage event) async* {
        yield ImageEdited(event.imageData);
      },
    );
  }
}

@freezed
abstract class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.init() = Init;
  const factory ImagePickerState.loading() = Loading;
  const factory ImagePickerState.imageSelected(
    Uint8List imageData,
  ) = ImageSelected;
  const factory ImagePickerState.imageEdited(
    Uint8List imageData,
  ) = ImageEdited;
  const factory ImagePickerState.error(ImageFailure failure) = Error;
}

@freezed
abstract class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.selectFromLibrary() = SelectFromLibrary;
  const factory ImagePickerEvent.selectFromCamera() = SelectFromCamera;
  const factory ImagePickerEvent.selectEditedImage(
    Uint8List imageData,
  ) = SelectEditedImage;
  const factory ImagePickerEvent.clear() = ClearSelected;
}
