import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;
import 'package:smarty_duelist/src/presentation/shared_widgets/shared_widgets.dart'
    show FormFieldEmail, FormFieldPassword, SubmitButton;

import 'blocs/blocs.dart';

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
    void _toRegistrationScreen() {}

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).loginGreetings,
//          style: widget.getPrimaryTextTheme(context).headline,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
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
                            SizedBox(
                              width: 150,
                              child: InkWell(
                                onTap: _toRegistrationScreen,
                                child: Text(S.of(context).registration),
                              ),
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
            child: FormFieldEmail(
              controller: signInBloc.emailController,
              attribute: describeEnum(SignInFormData.email),
              onFiledSubmitted: _makeOnNextActionSubmitted(
                signInBloc.passwordFocusNode,
              ),
            ),
          ),
          Container(
            constraints: getMaxWidthConstraints(context, 0.4),
            margin: const EdgeInsets.only(bottom: 0),
            child: FormFieldPassword(
              controller: signInBloc.passwordController,
              attribute: describeEnum(SignInFormData.password),
              label: S.of(context).password,
              focusNode: signInBloc.passwordFocusNode,
              onFiledSubmitted: onDoneActionSubmitted,
              textInputAction: TextInputAction.done,
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
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, signInState) {
              return SubmitButton(
                isLoading: signInState is Loading,
                title: S.of(context).loginEmail,
                color: Colors.blue,
                onPress: onPressSubmit,
              );
            },
          ),
        ),
        Container(
          constraints: getMaxWidthConstraints(context, 0.25),
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, signInState) {
              return SubmitButton(
                isLoading: signInState is Loading,
                title: S.of(context).loginWith('Google'),
                color: Colors.blue,
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