import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import '../../shared_widgets/shared_widgets.dart'
    show Button, FormTextField, NativeScaffold;
import '../../extensions/extensions.dart';
import '../../theme/theme.dart';
import 'blocs/blocs.dart';
import 'widgets/widgets.dart';

class ForgotPasswordPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<ForgotPasswordBloc>(
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
              padding: context.defaultPaddingHorizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                    condition: (prev, cur) =>
                        prev is ValidationShowed || cur is ValidationShowed,
                    builder: (context, state) {
                      return FormBuilder(
                        key: BlocProvider.of<ForgotPasswordBloc>(context).fbKey,
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

    final forgotPasswordBloc = BlocProvider.of<ForgotPasswordBloc>(context);
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
              controller: forgotPasswordBloc.emailController,
              attribute: describeEnum(ForgotPasswordFormData.email),
              onFiledSubmitted: onDoneActionSubmitted,
              icon: Icon(Icons.alternate_email),
              label: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
              validatorsList: forgotPasswordBloc.getEmailValidators(context),
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
