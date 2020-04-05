import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:smarty_duelist/src/presentation/routes/routes.dart';

part 'main_bottom_tabs_state.freezed.dart';

@freezed
abstract class MainBottomTabsState with _$MainBottomTabsState {
  const factory MainBottomTabsState(
    MainBottomTabs currentTab,
  ) = _MainBottomTabsState;
}
