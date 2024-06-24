import 'package:flutter/material.dart';

//  Colors
class AppColors {
  static const Color seedColor = Color.fromARGB(255, 98, 245, 242);
}

// Provides theme
class AppTheme {
  // App Light Theme
  final _lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.seedColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.seedColor,
    ),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.seedColor,
    ),
  );

  // App Dark Theme
  final _darkTheme = ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 15, 33, 103)),
    scaffoldBackgroundColor: const Color.fromARGB(255, 59, 52, 134),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.blue,
    ),
  );

  // These Methods return the ThemeData for light and dark theme
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;
}
