import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/presentation/routes/routes.dart';

import '../core_blocs/core_blocs.dart';
import 'show_native_bottom_sheet.dart';

Future<SelectorItem<Unit>> showImageActions(
  BuildContext context,
  ImagePickerBloc imagePickerBloc, {
  Uint8List imageData,
  String url,
  VoidCallback onDelete,
}) async {
  return showNativeBottomSheet<Unit>(
    context,
    title: S.of(context).bottomSheetAvatarTitle,
    actions: [
      SelectorItem(
        label: S.of(context).gallery,
        onSelect: (_) {
          imagePickerBloc.add(
            const SelectFromLibrary(),
          );
        },
      ),
      SelectorItem(
        label: S.of(context).camera,
        onSelect: (imageData) {
          imagePickerBloc.add(
            const SelectFromCamera(),
          );
        },
      ),
      if (imageData != null || url != null)
        SelectorItem(
          label: S.of(context).edit,
          isPopOnSelect: false,
          onSelect: (_) => ExtendedNavigator.of(context).popAndPushNamed(
            Routes.imageEditorModal,
            arguments: ImageEditorModalArguments(
              url: url,
              imageData: imageData,
            ),
          ),
        ),
      if (onDelete != null)
        SelectorItem(
          label: S.of(context).delete,
          isDestructive: true,
          onSelect: (_) => onDelete(),
        ),
    ],
  );
}
