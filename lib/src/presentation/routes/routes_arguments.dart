import 'package:flutter/widgets.dart';

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

  const ImageEditorModalArguments({this.key, this.url});
}
