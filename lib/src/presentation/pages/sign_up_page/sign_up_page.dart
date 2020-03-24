import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/core.dart' show OrientationMixin;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;
import 'package:smarty_duelist/src/presentation/shared_widgets/shared_widgets.dart'
    show Button, FormTextField, NativeScaffold;

import 'blocs/blocs.dart';
import 'widgets/widgets.dart';

class SignUpPage extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<SignUpBloc>(
        create: (_) => getIt<SignUpBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return SignUpBlocListener(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        excludeFromSemantics: true,
        child: NativeScaffold(
          previousPageTitle: S.of(context).signInTitle,
          title: Text(S.of(context).signUpTitle),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BlocBuilder<SignUpBloc, SignUpState>(
                      condition: (prev, cur) =>
                          prev is ValidationShowed || cur is ValidationShowed,
                      builder: (context, state) {
                        return FormBuilder(
                          key: BlocProvider.of<SignUpBloc>(context).fbKey,
                          autovalidate: state is ValidationShowed,
                          child: Column(
                            children: <Widget>[
                              _buildFormInputs(context),
                              _buildSubmitButton(context),
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

    final signUpBloc = BlocProvider.of<SignUpBloc>(context);

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
              controller: signUpBloc.emailController,
              attribute: describeEnum(SignUpFormData.email),
              onFiledSubmitted: _makeOnNextActionSubmitted(
                signUpBloc.passwordFocusNode,
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
              controller: signUpBloc.passwordController,
              attribute: describeEnum(SignUpFormData.password),
              onFiledSubmitted: _makeOnNextActionSubmitted(
                signUpBloc.confirmPasswordFocusNode,
              ),
              label: S.of(context).password,
              focusNode: signUpBloc.passwordFocusNode,
              icon: Icon(Icons.lock_outline),
              obscureText: true,
              validatorsList: [
                FormBuilderValidators.minLength(8,
                    errorText: S.of(context).errorMinLength(8)),
              ],
            ),
          ),
          Container(
            constraints: getMaxWidthConstraints(context, 0.4),
            margin: const EdgeInsets.only(bottom: 0),
            child: FormTextField(
              controller: signUpBloc.confirmPasswordController,
              attribute: describeEnum(SignUpFormData.confirmPassword),
              label: S.of(context).confirmPassword,
              focusNode: signUpBloc.confirmPasswordFocusNode,
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

  Widget _buildSubmitButton(BuildContext context) {
    return Flex(
      direction: isPortrait(context) ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: getMaxWidthConstraints(context, 0.25),
          margin: const EdgeInsets.only(bottom: 15),
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return Button(
                isLoading: state is Loading,
                title: S.of(context).submit,
                onPress: () => _submitForm(context),
              );
            },
          ),
        ),
      ],
    );
  }

  void _submitForm(BuildContext context) {
    BlocProvider.of<SignUpBloc>(context).add(const SignUp());
  }
}
