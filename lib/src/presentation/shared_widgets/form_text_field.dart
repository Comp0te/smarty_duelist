import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:smarty_duelist/generated/l10n.dart';

class FormTextField extends StatelessWidget {
  final TextEditingController controller;
  final String attribute;
  final List<FormFieldValidator> validatorsList;
  final ValueChanged<String> onFiledSubmitted;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final Icon icon;
  final String label;
  final TextInputType keyboardType;
  final double marginBottom;
  final bool isRequired;
  final bool obscureText;

  const FormTextField({
    Key key,
    @required this.controller,
    @required this.attribute,
    this.validatorsList = const [],
    this.onFiledSubmitted,
    this.textInputAction = TextInputAction.next,
    this.focusNode,
    this.icon,
    this.label,
    this.keyboardType = TextInputType.text,
    this.marginBottom = 0,
    this.isRequired = true,
    this.obscureText = false,
  })  : assert(controller != null),
        assert(attribute != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      constraints: const BoxConstraints(maxHeight: 60),
      margin: EdgeInsets.only(bottom: marginBottom),
      child: FormBuilderTextField(
        controller: controller,
        attribute: attribute,
        autocorrect: false,
        focusNode: focusNode,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onFieldSubmitted: onFiledSubmitted,
        obscureText: obscureText,
        maxLines: obscureText ? 1 : null,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          labelText: label,
          icon: icon,
        ),
        validators: [
          if (isRequired)
            FormBuilderValidators.required(
              errorText: S.of(context).errorRequired,
            ),
          ...validatorsList,
        ],
      ),
    );
  }
}
