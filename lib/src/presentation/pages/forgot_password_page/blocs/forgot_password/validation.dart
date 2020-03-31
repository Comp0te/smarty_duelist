import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';

import '../blocs.dart';

extension ForgotPasswordBlocX on ForgotPasswordBloc {
  List<FormFieldValidator> getEmailValidators(BuildContext context) {
    return [
      FormBuilderValidators.email(
        errorText: S.of(context).errorEmailIncorrect,
      ),
    ];
  }
}
