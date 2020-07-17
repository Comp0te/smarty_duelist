import 'package:flutter/material.dart';

import '../../routes/bottom_tab_routes/tabs.dart';
import '../../shared_widgets/native_scaffold.dart';
import '../../localisation/localisation.dart';

export 'blocs/blocs.dart';

class MessagesTab extends StatelessWidget {
  const MessagesTab();

  @override
  Widget build(BuildContext context) {
    return NativeScaffold(
      title: Text(MainBottomTabs.messages.getLabel(context)),
      body: Center(
        child: Text(MainBottomTabs.messages.getLabel(context)),
      ),
    );
  }
}
