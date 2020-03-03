import 'package:flutter/material.dart';

class Spinner extends StatelessWidget {
  const Spinner();

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 2,
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
