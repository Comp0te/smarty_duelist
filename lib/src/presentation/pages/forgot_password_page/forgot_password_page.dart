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

class ForgotPasswordPage extends StatelessWidget
    with OrientationMixin
    implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<ForgotPasswordBloc>(
        create: (_) => getIt<ForgotPasswordBloc>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordBlocListener(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        excludeFromSemantics: true,
        child: NativeScaffold(
          title: Text(S.of(context).forgotPasswordTitle),
          previousPageTitle: S.of(context).signInTitle,
          withKeyboardAnimation: true,
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                    condition: (prev, cur) =>
                        prev is ValidationShowed || cur is ValidationShowed,
                    builder: (context, state) {
                      return FormBuilder(
                        key: BlocProvider.of<ForgotPasswordBloc>(context)
                            .fbKey,
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
    void onDoneActionSubmitted(_) {
      _submitForm(context);
    }

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
              controller:
                  BlocProvider.of<ForgotPasswordBloc>(context).emailController,
              attribute: describeEnum(ForgotPasswordFormData.email),
              onFiledSubmitted: onDoneActionSubmitted,
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
          child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
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
    BlocProvider.of<ForgotPasswordBloc>(context).add(const ForgotPassword());
    FocusScope.of(context).unfocus();
  }
}
