import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../blocs/blocs.dart';

class SignInBlocListener extends StatelessWidget {
  final Widget child;

  const SignInBlocListener({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (failure) => FlushbarHelper.createError(
            title: S.of(context).error,
            message: failure.maybeWhen(
              signInWithEmail: (exp) => _getErrorMessageByCode(context, exp),
              signInWithGoogle: (exp) => _getErrorMessageByCode(context, exp),
              cancelledByUser: () => S.of(context).errorSignInCanceled,
              googleAuth: (exp) => _getGoogleAuthErrorMessage(context, exp),
              orElse: () => S.of(context).errorUnexpected,
            ),
            duration: failure.maybeWhen(
              cancelledByUser: () => const Duration(seconds: 2),
              orElse: () => const Duration(seconds: 3),
            )
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
      case 'ERROR_WRONG_PASSWORD':
      case 'ERROR_USER_NOT_FOUND':
        return S.of(context).errorWrongEmailOrPassword;
      case 'ERROR_USER_DISABLED':
        return S.of(context).errorUserDisabled;
      case 'ERROR_TOO_MANY_REQUESTS':
        return S.of(context).errorToManySignIn;

      case 'ERROR_INVALID_CREDENTIAL':
        return S.of(context).errorCredentialMalformed;
//    case 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL' - If there already exists an account with the email address asserted by Google. // TODO
//       Resolve this case by calling [fetchSignInMethodsForEmail] and then asking the user to sign in using one of them.
//       This error will only be thrown if the "One account per email address" setting is enabled in the Firebase console (recommended).
      default:
        return S.of(context).errorUnexpected;
    }
  }

  String _getGoogleAuthErrorMessage(
    BuildContext context,
    PlatformException exp,
  ) {
    switch (exp.code) {
      case GoogleSignInAccount.kFailedToRecoverAuthError:
      case GoogleSignInAccount.kUserRecoverableAuthError:
        return S.of(context).errorGoogleAuth;
      default:
        return S.of(context).errorUnexpected;
    }
  }
}
