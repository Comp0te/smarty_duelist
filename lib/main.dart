import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/injector/injector.dart';

void main() {
  configureInjector();
  runApp(App());
}
