import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show Camera, IImageRepository;
import 'bloc.dart';

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

        imageEither.fold(
          $ImagePickerState.error,
          $ImagePickerState.imageSelected,
        );
      },
    );
  }
}
