import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';

import 'package:smarty_duelist/src/presentation/routes/routes.dart'
    show MainBottomTabs;

import 'bloc.dart';

@injectable
class MainBottomTabsBloc
    extends Bloc<MainBottomTabsEvent, MainBottomTabsState> {
  final tabController = PlatformTabController(
    initialIndex: MainBottomTabs.home.index,
  );

  MainBottomTabsBloc();

  @override
  MainBottomTabsState get initialState => const MainBottomTabsState(
        MainBottomTabs.home,
      );

  @override
  Stream<MainBottomTabsState> mapEventToState(
      MainBottomTabsEvent event) async* {
    yield MainBottomTabsState(event.tab);
  }

  @override
  Future<void> close() {
    tabController.dispose();
    return super.close();
  }
}
