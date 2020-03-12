import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

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
    return FormBuilderCustomField(
      validators: [
        if (isRequired)
          FormBuilderValidators.required(
            errorText: S.of(context).errorRequired,
          ),
        ...validatorsList,
      ],
      attribute: attribute,
      formField: FormField(
        builder: (FormFieldState<dynamic> field) {
          return Container(
            constraints: BoxConstraints(
              minHeight: isMaterial(context) ? 80 : 61,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                PlatformTextField(
                  android: (_) => MaterialTextFieldData(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      labelText: label,
                      icon: icon,
                      errorText: field.errorText,
                    ),
                  ),
                  ios: (_) => CupertinoTextFieldData(
                      prefix: icon,
                      placeholder: label,
                      clearButtonMode: OverlayVisibilityMode.editing,
                      decoration: BoxDecoration(
                        color:
                            CupertinoTheme.of(context).scaffoldBackgroundColor,
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: field?.errorText != null
                                ? CupertinoColors.destructiveRed
                                : CupertinoColors.inactiveGray,
                          ),
                        ),
                      )),
                  controller: controller,
                  autocorrect: false,
                  focusNode: focusNode,
                  keyboardType: keyboardType,
                  textInputAction: textInputAction,
                  onSubmitted: onFiledSubmitted,
                  obscureText: obscureText,
                  maxLines: obscureText ? 1 : null,
                ),
                if (isCupertino(context))
                  Container(
                    height: 22,
                    alignment: Alignment.centerRight,
                    child: Text(
                      field?.errorText ?? '',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .tabLabelTextStyle
                          .copyWith(color: CupertinoColors.destructiveRed),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
