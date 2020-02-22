import 'package:bloc/bloc.dart';

import 'int_value_event.dart';

class IntValueBloc extends Bloc<IntValueEvent, int> {
  final int initialIndex;

  IntValueBloc({this.initialIndex = 0});

  @override
  int get initialState => initialIndex;

  @override
  Stream<int> mapEventToState(IntValueEvent event) async* {
    if (event is SetIntValue) {
      yield event.value;
    }
  }
}
