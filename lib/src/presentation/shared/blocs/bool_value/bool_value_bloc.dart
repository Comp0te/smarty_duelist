import 'package:bloc/bloc.dart';

import 'bool_value_event.dart';

class BoolValueBloc extends Bloc<BoolValueEvent, bool> {
  final bool initialValue;

  BoolValueBloc({this.initialValue = false});

  @override
  bool get initialState => initialValue;

  @override
  Stream<bool> mapEventToState(BoolValueEvent event) async* {
    if (event is ToggleBoolValue) {
      yield !state;
    } else if (event is SetBoolValue) {
      yield event.value;
    }
  }
}
