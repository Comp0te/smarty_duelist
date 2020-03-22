import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;
import 'package:smarty_duelist/src/presentation/routes/routes.dart' show Routes;
import 'package:smarty_duelist/src/presentation/shared_widgets/shared_widgets.dart'
    show Button, FormTextField, NativeScaffold, TextButton;

import 'blocs/blocs.dart';
import 'widgets/widgets.dart';

enum SignInFormData { email, password }

class SignInPage extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<SignInBloc>(
        create: (_) => getIt<SignInBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    final signInBloc = BlocProvider.of<SignInBloc>(context);
    void _toRegistrationScreen() {
      ExtendedNavigator.of(context).pushNamed(Routes.signUpPage);
    }

    return SignInBlocListener(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        excludeFromSemantics: true,
        child: NativeScaffold(
          title: Text(S.of(context).signInTitle),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BlocBuilder<SignInBloc, SignInState>(
                      condition: (prev, cur) =>
                          prev is ValidationShowed || cur is ValidationShowed,
                      builder: (context, state) {
                        return FormBuilder(
                          key: signInBloc.fbKey,
                          autovalidate: state is ValidationShowed,
                          child: Column(
                            children: <Widget>[
                              _buildFormInputs(context),
                              _buildSubmitButtons(context),
                              TextButton(
                                beforeLabel: S.of(context).notRegisteredYet,
                                label: S.of(context).createAccount,
                                onPress: _toRegistrationScreen,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormInputs(BuildContext context) {
    ValueChanged<String> _makeOnNextActionSubmitted(FocusNode fieldFocusNode) {
      return (_) => FocusScope.of(context).requestFocus(fieldFocusNode);
    }

    void onDoneActionSubmitted(_) {
      _submitForm(context);
      FocusScope.of(context).unfocus();
    }

    final signInBloc = BlocProvider.of<SignInBloc>(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Flex(
        direction: isLandscape(context) ? Axis.horizontal : Axis.vertical,
        mainAxisSize:
            isLandscape(context) ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            constraints: getMaxWidthConstraints(context, 0.4),
            margin: const EdgeInsets.only(bottom: 0),
            child: FormTextField(
              controller: signInBloc.emailController,
              attribute: describeEnum(SignInFormData.email),
              onFiledSubmitted: _makeOnNextActionSubmitted(
                signInBloc.passwordFocusNode,
              ),
              icon: Icon(Icons.alternate_email),
              label: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
              validatorsList: [
                FormBuilderValidators.email(
                  errorText: S.of(context).errorEmailIncorrect,
                ),
              ],
            ),
          ),
          Container(
            constraints: getMaxWidthConstraints(context, 0.4),
            margin: const EdgeInsets.only(bottom: 0),
            child: FormTextField(
              controller: signInBloc.passwordController,
              attribute: describeEnum(SignInFormData.password),
              label: S.of(context).password,
              focusNode: signInBloc.passwordFocusNode,
              onFiledSubmitted: onDoneActionSubmitted,
              textInputAction: TextInputAction.done,
              icon: Icon(Icons.lock_outline),
              obscureText: true,
              validatorsList: [
                FormBuilderValidators.minLength(8,
                    errorText: S.of(context).errorMinLength(8)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButtons(BuildContext context) {
    void onPressSubmit() => _submitForm(context);

    void _onPressGoogleSignIn() {
      BlocProvider.of<SignInBloc>(context).add(const SignInWithGoogle());
    }

    return Flex(
      direction: isPortrait(context) ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: getMaxWidthConstraints(context, 0.25),
          margin: const EdgeInsets.only(bottom: 15),
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, signInState) {
              return Button(
                isLoading: signInState is Loading,
                title: S.of(context).singInEmail,
                onPress: onPressSubmit,
              );
            },
          ),
        ),
        Container(
          constraints: getMaxWidthConstraints(context, 0.25),
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, signInState) {
              return Button(
                isLoading: signInState is Loading,
                title: S.of(context).signInProvider('Google'),
                onPress: _onPressGoogleSignIn,
              );
            },
          ),
        ),
      ],
    );
  }

  void _submitForm(BuildContext context) {
    BlocProvider.of<SignInBloc>(context).add(const SignInWithEmail());
  }
}
