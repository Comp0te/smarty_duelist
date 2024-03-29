import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../shared_widgets/shared_widgets.dart'
    show Button, FormTextField, NativeScaffold;
import '../../extensions/extensions.dart';
import '../../theme/theme.dart';
import 'blocs/blocs.dart';
import 'widgets/widgets.dart';

class SignUpPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<SignUpBloc>(
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
          withKeyboardAnimation: true,
          body: Center(
            child: SingleChildScrollView(
              padding: context.defaultPaddingHorizontal,
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
    );
  }

  Widget _buildFormInputs(BuildContext context) {
    ValueChanged<String> _makeOnNextActionSubmitted(FocusNode fieldFocusNode) {
      return (_) => FocusScope.of(context).requestFocus(fieldFocusNode);
    }

    void onDoneActionSubmitted(_) {
      _submitForm(context);
    }

    final signUpBloc = BlocProvider.of<SignUpBloc>(context);
    final mq = MediaQuery.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Flex(
        direction: mq.isLandscape ? Axis.horizontal : Axis.vertical,
        mainAxisSize: mq.isLandscape ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            constraints: mq.getMaxWidthConstraints(0.4),
            margin: const EdgeInsets.only(),
            child: FormTextField(
              controller: signUpBloc.emailController,
              attribute: describeEnum(SignUpFormData.email),
              onFiledSubmitted: _makeOnNextActionSubmitted(
                signUpBloc.passwordFocusNode,
              ),
              icon: Icon(Icons.alternate_email),
              label: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
              validatorsList: signUpBloc.getEmailValidators(context),
            ),
          ),
          Container(
            constraints: mq.getMaxWidthConstraints(0.4),
            margin: const EdgeInsets.only(),
            child: FormTextField(
              controller: signUpBloc.passwordController,
              attribute: describeEnum(SignUpFormData.password),
              onFiledSubmitted: _makeOnNextActionSubmitted(
                signUpBloc.confirmPasswordFocusNode,
              ),
              label: S.of(context).password,
              focusNode: signUpBloc.passwordFocusNode,
              icon: Icon(PlatformIcons(context).padlockSolid),
              obscureText: true,
              validatorsList: signUpBloc.getPasswordValidators(context),
            ),
          ),
          Container(
            constraints: mq.getMaxWidthConstraints(0.4),
            margin: const EdgeInsets.only(),
            child: FormTextField(
              controller: signUpBloc.confirmPasswordController,
              attribute: describeEnum(SignUpFormData.confirmPassword),
              label: S.of(context).confirmPassword,
              focusNode: signUpBloc.confirmPasswordFocusNode,
              onFiledSubmitted: onDoneActionSubmitted,
              textInputAction: TextInputAction.done,
              icon: Icon(PlatformIcons(context).padlockSolid),
              obscureText: true,
              validatorsList: signUpBloc.getConfirmPasswordValidators(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final mq = MediaQuery.of(context);

    return Flex(
      direction: mq.isPortrait ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: mq.getMaxWidthConstraints(0.25),
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
    FocusScope.of(context).unfocus();
  }
}
