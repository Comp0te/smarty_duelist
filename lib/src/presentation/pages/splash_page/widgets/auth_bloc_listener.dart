import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smarty_duelist/src/presentation/core_blocs/core_blocs.dart'
    show AuthBloc, AuthState;
import 'package:smarty_duelist/src/presentation/routes/routes.dart' show Routes;

class AuthBlocListener extends StatelessWidget {
  final Widget child;

  const AuthBlocListener({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authAuthenticated: (_) {
            ExtendedNavigator.of(context).pushReplacementNamed(Routes.homePage);
          },
          authUnauthenticated: () {
            ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage);
          },
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
