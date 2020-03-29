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
          error: (failure) => failure.maybeWhen(
            cancelledByUser: () => FlushbarHelper.createInformation(
              message: S.of(context).errorSignInCanceled,
            ).show(context),
            orElse: () => FlushbarHelper.createError(
              title: S.of(context).error,
              message: failure.maybeWhen(
                signInWithEmail: (exp) => _getErrorMessageByCode(context, exp),
                signInWithCredential: (exp) =>
                    _getErrorMessageByCode(context, exp),
                accountExistsWithDifferentCredential: (signInMethods) =>
                    S.of(context).signAccountExistsWithDifferentCredential(
                          signInMethods.join(', '),
                        ),
                googleAuth: (exp) => _getGoogleAuthErrorMessage(context, exp),
                orElse: () => S.of(context).errorUnexpected,
              ),
              duration: const Duration(seconds: 4),
            )..show(context),
          ),
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
