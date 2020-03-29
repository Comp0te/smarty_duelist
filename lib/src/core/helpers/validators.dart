import 'package:flutter/material.dart';

import 'package:smarty_duelist/generated/l10n.dart';

FormFieldValidator makeConfirmPasswordValidator({
  @required TextEditingController passwordController,
  @required BuildContext context,
}) {
  return (dynamic val) {
    if (passwordController.text != val) {
      return S.of(context).errorPasswordsDoNotMatch;
    }

    return null;
  };
}
