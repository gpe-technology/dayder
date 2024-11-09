import 'package:dayder/screen/screen.dart';

class GridCrossCount {
  static int valueOf(double width) {
    if (width > ScreenSize.lg) {
      return 4;
    }
    if (width > ScreenSize.md) {
      return 3;
    }
    return 2;
  }
}
