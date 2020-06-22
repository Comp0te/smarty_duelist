import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../shared_widgets/native_scaffold.dart';
import '../../localisation/localisation.dart';

export 'blocs/blocs.dart';

class ShopTab extends StatelessWidget {
  const ShopTab();

  @override
  Widget build(BuildContext context) {
    return NativeScaffold(
      title: Text(MainBottomTabs.shop.getLabel(context)),
      body: Center(
        child: Text(MainBottomTabs.shop.getLabel(context)),
      ),
    );
  }
}
