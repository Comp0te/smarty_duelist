import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:smarty_duelist/src/presentation/presentation.dart'
    show App, CustomBlocDelegate;
import 'package:smarty_duelist/src/injector/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await CustomBlocDelegate.build();
  configureInjector();
  runApp(App());
}
