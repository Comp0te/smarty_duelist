import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../../../core_blocs/core_blocs.dart'
    show ImagePickerBloc, SelectEditedImage;
import '../blocs/blocs.dart';

class ImageEditorBlocListener extends StatelessWidget {
  final Widget child;

  const ImageEditorBlocListener({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ImageEditorBloc, ImageEditorState>(
      listener: (context, state) {
        state.maybeWhen(
            error: (failure) => FlushbarHelper.createError(
                  title: S.of(context).error,
                  message: failure.maybeWhen(
                    editor: (_) => S.of(context).errorImageEditor,
                    orElse: () => S.of(context).errorUnexpected,
                  ),
                  duration: const Duration(seconds: 4),
                ),
            imageEdited: (imageData) {
              BlocProvider.of<ImagePickerBloc>(context).add(
                SelectEditedImage(imageData),
              );
              ExtendedNavigator.of(context).popUntil(
                (route) => route.isFirst,
              );
            },
            orElse: () {});
      },
      child: child,
    );
  }
}
