import 'package:flutter/material.dart';

class AppThemeData {}

extension CoreColors on ThemeData {
  Color get coreRed => const Color.fromRGBO(242, 63, 64, 1);
  Color get coreWhite => const Color.fromRGBO(249, 249, 249, 1);
  Color get coreBlue => const Color.fromRGBO(25, 30, 49, 1);
  Color get coreTransparent => const Color.fromRGBO(0, 0, 0, 0);
  Color get coreBlack => const Color.fromRGBO(0, 0, 0, 1);
  Color get coreGreen => const Color.fromRGBO(76, 175, 80, 1);
  Color get coreGrey => const Color.fromRGBO(153, 153, 153, 1);
  Color get corePink => const Color.fromRGBO(206, 91, 120, 1);
}
