import 'package:flutter/material.dart';

import '../../routes/bottom_tab_routes/tabs.dart';
import '../../shared_widgets/native_scaffold.dart';
import '../../localisation/localisation.dart';

export 'blocs/blocs.dart';

class GameTab extends StatelessWidget {
  const GameTab();

  @override
  Widget build(BuildContext context) {
    return NativeScaffold(
      title: Text(MainBottomTabs.game.getLabel(context)),
      body: Center(
        child: Text(MainBottomTabs.game.getLabel(context)),
      ),
    );
  }
}
