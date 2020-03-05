import 'package:flutter/material.dart';

import 'shared_widgets.dart' show Spinner;

class SubmitButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final bool isLoading;
  final Color color;
  final EdgeInsets margin;

  const SubmitButton({
    Key key,
    this.onPress,
    @required this.title,
    @required this.isLoading,
    this.color,
    this.margin = const EdgeInsets.only(bottom: 25),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: RaisedButton(
        onPressed: onPress,
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 200,
            minHeight: 45,
          ),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          child: isLoading
              ? Spinner(
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : Text(
                  title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).primaryTextTheme.button,
                ),
        ),
      ),
    );
  }
}
