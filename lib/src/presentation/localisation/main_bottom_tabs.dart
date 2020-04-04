import 'package:flutter/material.dart';

import 'package:smarty_duelist/generated/l10n.dart' show S;

import '../routes/routes.dart' show MainBottomTabs;

extension MainBottomTabsX on MainBottomTabs {
  String getLabel(BuildContext context) {
    switch (this) {
      case MainBottomTabs.home:
        return S.of(context).bottomTabHome;
      case MainBottomTabs.messages:
        return S.of(context).bottomTabMessages;
      case MainBottomTabs.game:
        return S.of(context).bottomTabGame;
      case MainBottomTabs.shop:
        return S.of(context).bottomTabShop;
      case MainBottomTabs.profile:
        return S.of(context).bottomTabProfile;
      default:
        return '';
    }
  }
}
