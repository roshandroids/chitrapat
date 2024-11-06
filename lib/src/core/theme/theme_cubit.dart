import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Theme data provider
final appThemeProvider = ChangeNotifierProvider<AppTheme>(
  (_) => AppTheme(),
);

class AppTheme extends ChangeNotifier {
  ThemeData get appTheme => ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        textTheme: _textTheme,
        splashFactory: NoSplash.splashFactory,
        splashColor: const Color(0x00000000),
      );

  TextTheme get _textTheme => const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      );
}
