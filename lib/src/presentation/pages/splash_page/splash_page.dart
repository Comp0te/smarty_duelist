import 'package:flutter/material.dart';

import 'package:smarty_duelist/src/presentation/shared_widgets/shared_widgets.dart'
    show NativeScaffold, Spinner, SpinnerMode;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const NativeScaffold(
      body: Spinner(spinnerMode: SpinnerMode.standalone),
    );
  }
}
