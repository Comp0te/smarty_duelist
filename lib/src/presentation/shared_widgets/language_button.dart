import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

import '../localisation/localisation.dart';
import '../core_blocs/core_blocs.dart' show LanguageChanged, PreferencesBloc;
import '../shared_widgets/show_native_bottom_sheet.dart'
    show SelectorItem, showNativeBottomSheet;

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformIconButton(
      padding: EdgeInsets.zero,
      onPressed: () async {
        final item = await showNativeBottomSheet<SupportedLanguages>(
          context,
          title: S.of(context).bottomSheetSelectLanguage,
          actions: SupportedLanguages.values.map((language) {
            return SelectorItem(
              key: language.index.toString(),
              label: language.getLabel(context),
              value: language,
            );
          }).toList(),
        );

        if (item != null) {
          BlocProvider.of<PreferencesBloc>(context).add(
            LanguageChanged(item.value),
          );
        }
      },
      icon: Icon(Icons.language),
    );
  }
}
