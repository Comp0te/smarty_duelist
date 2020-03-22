import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'src/presentation/presentation.dart' show App, SimpleBlocDelegate;
import 'src/injector/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  configureInjector();
  runApp(App());
}
