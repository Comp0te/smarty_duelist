import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../localisation/localisation.dart';
import '../core_blocs/core_blocs.dart'
    show PreferencesBloc, PreferencesState, ThemeChanged;
import '../shared_widgets/show_native_bottom_sheet.dart'
    show SelectorItem, showNativeBottomSheet;

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformIconButton(
      padding: EdgeInsets.zero,
      onPressed: () async {
        final item = await showNativeBottomSheet<ThemeMode>(
          context,
          title: S.of(context).bottomSheetSelectTheme,
          actions: ThemeMode.values.map((mode) {
            return SelectorItem(
              key: mode.index.toString(),
              label: mode.getLabel(context),
              value: mode,
            );
          }).toList(),
        );

        if (item != null) {
          BlocProvider.of<PreferencesBloc>(context).add(
            ThemeChanged(item.value),
          );
        }
      },
      icon: BlocBuilder<PreferencesBloc, PreferencesState>(
        builder: (context, state) {
          switch (state.themeMode) {
            case ThemeMode.light:
              return Icon(Icons.brightness_7);
            case ThemeMode.dark:
              return Icon(Icons.brightness_3);
            case ThemeMode.system:
            default:
              return Icon(Icons.brightness_auto);
          }
        },
      ),
    );
  }
}
