import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../routes/routes.dart';
import '../core_blocs/core_blocs.dart';
import 'show_native_bottom_sheet.dart';

Future<SelectorItem<Unit>> showImageActions(
  BuildContext context,
  ImagePickerBloc imagePickerBloc, {
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
      if (imagePickerBloc != null || url != null)
        SelectorItem(
          label: S.of(context).edit,
          isPopOnSelect: false,
          onSelect: (_) {
            ExtendedNavigator.ofRouter<ProfileRouter>().pushImageEditorModal(
              url: url,
              imagePickerBloc: imagePickerBloc,
            );
          },
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
