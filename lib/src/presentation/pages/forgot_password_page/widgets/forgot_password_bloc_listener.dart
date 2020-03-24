import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../blocs/blocs.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  final Widget child;

  const ForgotPasswordBlocListener({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (failure) => FlushbarHelper.createError(
              title: S.of(context).error,
              message: failure.maybeWhen(
                sendResetPassword: (exp) => _getErrorMessageByCode(context, exp),
                orElse: () => S.of(context).errorUnexpected,
              ),
              duration: failure.maybeWhen(
                orElse: () => const Duration(seconds: 4),
              ))
            ..show(context),
          orElse: () {},
        );
      },
      child: child,
    );
  }

  String _getErrorMessageByCode(BuildContext context, PlatformException exp) {
    switch (exp.code) {
      case 'ERROR_INVALID_EMAIL':
        return S.of(context).errorEmailMalformed;
      case 'ERROR_USER_NOT_FOUND':
        return S.of(context).errorUserNotFound;
      default:
        return S.of(context).errorUnexpected;
    }
  }
}
