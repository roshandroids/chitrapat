import 'package:flutter/material.dart';

extension DeviceSize on BuildContext {
  ///Device width
  double get deviceWidth => MediaQuery.of(this).size.width;

  ///Device height
  double get deviceHeight => MediaQuery.of(this).size.height;

  /// Get Viewpadding
  EdgeInsets get viewpadding => MediaQuery.of(this).viewPadding;

  /// Get Viewinsets
  EdgeInsets get bottomNotchHeight => MediaQuery.of(this).viewInsets;
}
