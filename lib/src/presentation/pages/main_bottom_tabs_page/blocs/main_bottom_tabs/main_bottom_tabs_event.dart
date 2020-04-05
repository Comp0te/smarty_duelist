import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../routes/routes.dart';

part 'main_bottom_tabs_event.freezed.dart';

@freezed
abstract class MainBottomTabsEvent with _$MainBottomTabsEvent {
  const factory MainBottomTabsEvent.navigateToTab(
    MainBottomTabs tab,
  ) = NavigateToTab;
}
