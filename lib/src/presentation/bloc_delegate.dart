import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      // ignore: avoid_print
      print('--- $event');
    }
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    if (kDebugMode) {
      // ignore: avoid_print
      print(
        '************************************************************ \n'
        'error --- $error bloc --- $bloc \n'
        '************************************************************ \n'
        '$stacktrace',
      );
    }
  }
}
