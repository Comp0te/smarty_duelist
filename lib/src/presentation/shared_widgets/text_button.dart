import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TextButton extends StatelessWidget {
  final String label;
  final String beforeLabel;
  final VoidCallback onPress;

  const TextButton({
    Key key,
    @required this.label,
    this.beforeLabel,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              if (beforeLabel != null)
                Flexible(
                  child: Text(
                    beforeLabel,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                  ),
                ),
              PlatformButton(
                onPressed: onPress,
                androidFlat: (_) => MaterialFlatButtonData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                ),
                ios: (_) => CupertinoButtonData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                ),
                child: Text(label),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
