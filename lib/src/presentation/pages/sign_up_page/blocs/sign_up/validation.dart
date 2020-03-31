import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/core/constants/constants.dart'
    show kMinPasswordLength;

import '../blocs.dart';

extension SignUpBlocX on SignUpBloc {
  List<FormFieldValidator> getEmailValidators(BuildContext context) {
    return [
      FormBuilderValidators.email(
        errorText: S.of(context).errorEmailIncorrect,
      ),
    ];
  }

  List<FormFieldValidator> getPasswordValidators(BuildContext context) {
    return [
      FormBuilderValidators.minLength(
        kMinPasswordLength,
        errorText: S.of(context).errorMinLength(kMinPasswordLength),
      ),
    ];
  }

  List<FormFieldValidator> getConfirmPasswordValidators(BuildContext context) {
    return [
      (dynamic val) {
        if (passwordController.text != val) {
          return S.of(context).errorPasswordsDoNotMatch;
        }

        return null;
      },
    ];
  }
}
