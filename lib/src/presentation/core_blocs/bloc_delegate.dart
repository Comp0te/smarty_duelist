import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

class CustomBlocDelegate extends HydratedBlocDelegate {
  CustomBlocDelegate._(HydratedStorage storage) : super(storage);

  static Future<HydratedBlocDelegate> build() async {
    return CustomBlocDelegate._(
      await HydratedBlocStorage.getInstance(
        storageDirectory: await getApplicationDocumentsDirectory(),
      ),
    );
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    debugPrint('--- $event');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    debugPrint(
      '************************************************************ \n'
      'error --- $error bloc --- $bloc \n'
      '************************************************************ \n'
      '$stacktrace',
    );
  }
}
