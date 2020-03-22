//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/presentation/shared_widgets/shared_widgets.dart'
    show NativeScaffold;

class HomePage extends StatelessWidget
    with OrientationMixin
    /*implements AutoRouteWrapper*/ {
//  @override
//  Widget get wrappedRoute => BlocProvider<HomeBloc>(
//        create: (_) => getIt<HomeBloc>(),
//        child: this,
//      );

  @override
  Widget build(BuildContext context) {
    return const NativeScaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
