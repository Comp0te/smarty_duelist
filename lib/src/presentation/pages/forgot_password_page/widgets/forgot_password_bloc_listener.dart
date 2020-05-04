import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../../../shared_widgets/shared_widgets.dart'
    show NativeAlert, NativeDialogAction;
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
          success: () => showPlatformDialog(
            context: context,
            builder: (_) => NativeAlert(
              title: S.of(context).success,
              content: Text(S.of(context).forgotPasswordSuccess),
              actions: <NativeDialogAction>[
                NativeDialogAction(
                  title: S.of(context).ok,
                  onPress: () {
                    ExtendedNavigator.of(context).popUntil(
                      (route) => route.isFirst,
                    );
                  },
                )
              ],
            ),
          ),
          error: (failure) => FlushbarHelper.createError(
            title: S.of(context).error,
            message: failure.maybeWhen(
              sendResetPassword: (exp) => _getErrorMessageByCode(context, exp),
              orElse: () => S.of(context).errorUnexpected,
            ),
            duration: const Duration(seconds: 4),
          )..show(context),
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
