import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,

      colorScheme:
      ColorScheme.fromSeed(
        seedColor:
        const Color(0xFF1473E6),
      ),

      scaffoldBackgroundColor:
      Colors.white,

      searchBarTheme:
      const SearchBarThemeData(
        elevation:
        WidgetStatePropertyAll(0),
      ),
    );
  }
}