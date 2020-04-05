import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

extension MediaQueryDataX on MediaQueryData {
  bool get isLandscape => orientation == Orientation.landscape;
  bool get isPortrait => orientation == Orientation.portrait;

  void setAllOrientations() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void setOnlyPortraitUP() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  BoxConstraints getMaxWidthConstraints(num partOfMaxWidth) {
    assert(partOfMaxWidth >= 0 && partOfMaxWidth <= 1);

    return isLandscape
        ? BoxConstraints(maxWidth: size.width * partOfMaxWidth)
        : const BoxConstraints();
  }
}