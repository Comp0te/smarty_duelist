import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../routes/routes.dart';

part 'main_bottom_tabs_bloc.freezed.dart';

@injectable
class MainBottomTabsBloc extends Bloc<MainBottomTabsEvent, MainBottomTabs> {
  final tabController = PlatformTabController(
    initialIndex: MainBottomTabs.home.index,
  );
  Map<MainBottomTabs, GlobalKey<NavigatorState>> navigationKeys = {
    for (var tab in MainBottomTabs.values) tab: GlobalKey<NavigatorState>()
  };

  MainBottomTabsBloc();

  @override
  MainBottomTabs get initialState => MainBottomTabs.home;

  @override
  Stream<MainBottomTabs> mapEventToState(MainBottomTabsEvent event) async* {
    if (event.tab == state) {
      navigationKeys[event.tab].currentState.popUntil((route) => route.isFirst);
    } else {
      tabController.setIndex(event.context, event.tab.index);
      yield event.tab;
    }
  }

  @override
  Future<void> close() {
    tabController.dispose();
    return super.close();
  }
}

@freezed
abstract class MainBottomTabsEvent with _$MainBottomTabsEvent {
  const factory MainBottomTabsEvent.navigateToTab(
    BuildContext context,
    MainBottomTabs tab,
  ) = NavigateToTab;
}
