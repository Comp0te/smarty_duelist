import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../core_blocs/core_blocs.dart';
import '../../shared_widgets/shared_widgets.dart'
    show Button, NativeScaffold, Spinner, SpinnerMode;
import '../../theme/theme.dart';
import 'widgets/widgets.dart';
import 'blocs/blocs.dart';

class ImageEditorModal extends StatelessWidget implements AutoRouteWrapper {
  final String url;
  final ImagePickerBloc imagePickerBloc;

  const ImageEditorModal({
    Key key,
    this.url,
    this.imagePickerBloc,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<ImageEditorBloc>(
            create: (_) => getIt<ImageEditorBloc>(),
          ),
          BlocProvider.value(value: imagePickerBloc),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return ImageEditorBlocListener(
      child: NativeScaffold(
        title: Text(S.of(context).imageEditorTitle),
        body: Center(
          child: BlocBuilder<ImageEditorBloc, ImageEditorState>(
            builder: (context, state) => state.maybeWhen(
              loading: () => const Spinner(spinnerMode: SpinnerMode.standalone),
              orElse: () => BlocBuilder<ImagePickerBloc, ImagePickerState>(
                bloc: imagePickerBloc,
                builder: (context, state) {
                  if (state is EditedImage) {
                    return _buildImageEditor(
                      context,
                      imageData: state.imageData,
                    );
                  } else if (state is SelectedImage) {
                    return _buildImageEditor(
                      context,
                      imageData: state.imageData,
                    );
                  } else {
                    return _buildImageEditor(context, url: url);
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageEditor(
    BuildContext context, {
    Uint8List imageData,
    String url,
  }) {
    assert(imageData != null || url != null);
    if (url == null && imageData == null) return Container();

    final imageEditorBloc = BlocProvider.of<ImageEditorBloc>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExtendedImage(
          image: imageData != null
              ? ExtendedMemoryImageProvider(imageData) as ImageProvider
              : ExtendedNetworkImageProvider(url, cache: true),
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
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
        _buildControls(context),
        _buildSubmitButton(context),
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

  Widget _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: context.defaultPaddingHorizontal,
      child: Button(
        title: S.of(context).confirm,
        onPress: () =>
            BlocProvider.of<ImageEditorBloc>(context).add(const Edit()),
      ),
    );
  }
}
