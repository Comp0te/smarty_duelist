import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smarty_duelist/generated/l10n.dart' show S;
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../shared_widgets/shared_widgets.dart' show Button;
import 'blocs/blocs.dart';

class ProfileTab extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  const ProfileTab();

  @override
  Widget get wrappedRoute => BlocProvider<SignOutBloc>(
        create: (_) => getIt<SignOutBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: 100,
            child: Button(
              title: S.of(context).logout,
              onPress: () {
                BlocProvider.of<SignOutBloc>(context).add(const SignOut());
              },
            ),
          )
        ],
      ),
    );
  }
}
