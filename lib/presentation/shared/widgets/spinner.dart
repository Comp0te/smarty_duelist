import 'package:flutter/material.dart';

import 'package:smarty_duelist/core/core.dart';


class Spinner extends StatelessWidget with ThemeMixin {
  const Spinner();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: getColorScheme(context).onPrimary,
        ),
      ),
    );
  }
}
