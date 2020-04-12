import 'package:flutter/widgets.dart';

import '../core_blocs/core_blocs.dart';
import 'material_router.gr.dart' as material;
import 'cupertino_router.gr.dart' as cupertino;

@immutable
class ImageEditorModalArguments
    implements
        material.ImageEditorModalArguments,
        cupertino.ImageEditorModalArguments {
  @override
  final Key key;
  @override
  final String url;
  @override
  final ImagePickerBloc imagePickerBloc;

  const ImageEditorModalArguments({
    this.key,
    this.url,
    this.imagePickerBloc,
  });
}
