import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../shared_widgets/shared_widgets.dart' show Button, NativeScaffold;
import 'blocs/blocs.dart';

class HomePage extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<SignOutBloc>(
        create: (_) => getIt<SignOutBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return NativeScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Home'),
            Button(
              // temporary
              title: 'logout',
              onPress: () {
                BlocProvider.of<SignOutBloc>(context).add(const SignOut());
              },
            )
          ],
        ),
      ),
    );
  }
}
