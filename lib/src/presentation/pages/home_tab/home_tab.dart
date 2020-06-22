import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../shared_widgets/native_scaffold.dart';
import '../../localisation/localisation.dart';

export 'blocs/blocs.dart';

class HomeTab extends StatelessWidget {
  const HomeTab();

  @override
  Widget build(BuildContext context) {
    return NativeScaffold(
      title: Text(MainBottomTabs.home.getLabel(context)),
      body: Center(
        child: Text(MainBottomTabs.home.getLabel(context)),
      ),
    );
  }
}
