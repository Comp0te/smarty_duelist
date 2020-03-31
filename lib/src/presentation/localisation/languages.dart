import 'package:flutter/material.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show SupportedLanguages;

extension SupportedLanguagesX on SupportedLanguages {
  String getLabel(BuildContext context) {
    switch (this) {
      case SupportedLanguages.en:
        return S.of(context).languageEnglish;
      case SupportedLanguages.ru:
        return S.of(context).languageRussian;
      case SupportedLanguages.ua:
      default:
        return S.of(context).languageUkrainian;
    }
  }
}
