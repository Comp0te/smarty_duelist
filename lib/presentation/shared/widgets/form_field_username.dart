import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/core/core.dart';
import 'package:smarty_duelist/generated/l10n.dart';

class FormFieldUserName extends StatelessWidget with ThemeMixin {
  final TextEditingController controller;
  final String attribute;
  final List<FormFieldValidator> validatorsList;
  final ValueChanged<String> onFiledSubmitted;
  final TextInputAction textInputAction;
  final FocusNode focusNode;

  const FormFieldUserName({
    Key key,
    @required this.controller,
    @required this.attribute,
    this.validatorsList = const [],
    this.onFiledSubmitted,
    this.textInputAction = TextInputAction.next,
    this.focusNode,
  })  : assert(attribute != null),
        assert(controller != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      constraints: const BoxConstraints(maxHeight: 60),
      child: FormBuilderTextField(
        style: getTextTheme(context).body1,
        controller: controller,
        attribute: attribute,
        autocorrect: false,
        focusNode: focusNode,
        keyboardType: TextInputType.text,
        onFieldSubmitted: onFiledSubmitted,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          labelText: S.of(context).username,
          icon: Icon(Icons.person_outline),
        ),
        validators: [
          ...validatorsList,
        ],
      ),
    );
  }
}
