import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';

import '../../../../routes/routes.dart' show MainBottomTabs;
import 'bloc.dart';

@injectable
class MainBottomTabsBloc extends Bloc<MainBottomTabsEvent, MainBottomTabs> {
  final tabController = PlatformTabController(
    initialIndex: MainBottomTabs.home.index,
  );

  MainBottomTabsBloc();

  @override
  MainBottomTabs get initialState => MainBottomTabs.home;

  @override
  Stream<MainBottomTabs> mapEventToState(MainBottomTabsEvent event) async* {
//    tabController.setIndex(event.tab.index); // TODO Added PR to package
    yield event.tab;
  }

  @override
  Future<void> close() {
    tabController.dispose();
    return super.close();
  }
}
