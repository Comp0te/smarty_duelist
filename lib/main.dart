import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'src/presentation/presentation.dart' show App, CustomBlocDelegate;
import 'src/injector/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await CustomBlocDelegate.build();
  configureInjector();
  runApp(App());
}
