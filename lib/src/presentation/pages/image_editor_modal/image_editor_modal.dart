import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../shared_widgets/shared_widgets.dart' show Button, NativeScaffold;
import '../../theme/theme.dart';
import 'blocs/blocs.dart';

class ImageEditorModal extends StatefulWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<ImageEditorBloc>(
        create: (_) => getIt<ImageEditorBloc>(),
        child: this,
      );

  @override
  _ImageEditorModalState createState() => _ImageEditorModalState();
}

class _ImageEditorModalState extends State<ImageEditorModal> {
  @override
  Widget build(BuildContext context) {
    return NativeScaffold(
      title: Text(S.of(context).imageEditorTitle),
      body: Center(
        child: BlocBuilder<ImageEditorBloc, ImageEditorState>(
          builder: (context, state) => state.maybeWhen(
            imageSelected: (imageData) => _buildImageEditor(context, imageData),
            orElse: null,
          ),
        ),
      ),
    );
  }

  Widget _buildImageEditor(BuildContext context, Uint8List imageData) {
    final imageEditorBloc = BlocProvider.of<ImageEditorBloc>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: ExtendedImage.memory(
            imageData,
            fit: BoxFit.fitWidth,
            mode: ExtendedImageMode.editor,
            enableLoadState: true,
            extendedImageEditorKey: imageEditorBloc.editorKey,
            initEditorConfigHandler: (state) {
              return EditorConfig(
                cornerColor: context.primaryColor,
                lineColor: context.scaffoldBackgroundColor.withOpacity(0.7),
                maxScale: 8.0,
                cropRectPadding: const EdgeInsets.all(20.0),
                hitTestSize: 20.0,
                initCropRectType: InitCropRectType.imageRect,
                cropAspectRatio: CropAspectRatios.ratio1_1,
              );
            },
          ),
        ),
        _buildControls(context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Button(
            title: S.of(context).confirm,
            onPress: () => imageEditorBloc.add(const Edit()),
          ),
        ),
      ],
    );
  }

  Widget _buildControls(BuildContext context) {
    final imageEditorBloc = BlocProvider.of<ImageEditorBloc>(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          PlatformIconButton(
            icon: Icon(Icons.flip),
            onPressed: () => imageEditorBloc.add(const Flip()),
          ),
          PlatformIconButton(
            icon: Icon(Icons.rotate_left),
            onPressed: () => imageEditorBloc.add(const RotateLeft()),
          ),
          PlatformIconButton(
            icon: Icon(Icons.rotate_right),
            onPressed: () => imageEditorBloc.add(const RotateRight()),
          ),
          PlatformIconButton(
            icon: Icon(Icons.restore),
            onPressed: () => imageEditorBloc.add(const Restore()),
          ),
        ],
      ),
    );
  }
}
