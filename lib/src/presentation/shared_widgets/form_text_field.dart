import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart';
import 'package:smarty_duelist/src/presentation/theme/theme.dart'
    show
        cupertinoPrimaryColor,
        cupertinoPrimaryColorDark,
        darkMaterialTheme,
        lightMaterialTheme;

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
  final int maxLines;

  const FormTextField({
    Key key,
    @required this.controller,
    @required this.attribute,
    this.onFiledSubmitted,
    this.focusNode,
    this.icon,
    this.label,
    this.validatorsList = const [],
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.marginBottom = 5,
    this.isRequired = true,
    this.obscureText = false,
    this.maxLines = 1,
  })  : assert(controller != null),
        assert(attribute != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 80,
      ),
      child: Material(
        color: Colors.transparent,
        child: Theme(
          data: _getPlatformBrightness(context),
          child: FormBuilderTextField(
            attribute: attribute,
            controller: controller,
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
        ),
      ),
    );
  }

  ThemeData _getPlatformBrightness(BuildContext context) {
    if (isCupertino(context)) {
      if (CupertinoTheme.of(context).brightness == Brightness.light) {
        return lightMaterialTheme.copyWith(
          accentColor: cupertinoPrimaryColor,
          errorColor: CupertinoColors.destructiveRed,
        );
      } else {
        return darkMaterialTheme.copyWith(
          accentColor: cupertinoPrimaryColorDark,
          errorColor: CupertinoColors.destructiveRed,
        );
      }
    }

    if (Theme.of(context).brightness == Brightness.dark) {
      return darkMaterialTheme;
    }

    return lightMaterialTheme;
  }
}
