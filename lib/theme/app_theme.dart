import 'package:flutter/material.dart';

class AppColors {
  // Core Tones
  static const Color blue500 = Color(0xFF4285F4);
  static const Color green500 = Color(0xFF34A853);
  static const Color yellow600 = Color(0xFFF9AB00);
  static const Color red500 = Color(0xFFEA4335);

  // Half Tones
  static const Color halftoneBlue = Color(0xFF57CAFF);
  static const Color halftoneGreen = Color(0xFF5CDB6D);
  static const Color halftoneYellow = Color(0xFFFFD427);
  static const Color halftoneRed = Color(0xFFFF7DAF);

  // Pastels
  static const Color pastelBlue = Color(0xFFC3ECF6);
  static const Color pastelGreen = Color(0xFFCCF6C5);
  static const Color pastelYellow = Color(0xFFFFE7A5);
  static const Color pastelRed = Color(0xFFF8D8D8);

  // Greyscale
  static const Color offWhite = Color(0xFFF0F0F0);
  static const Color black02 = Color(0xFF1E1E1E);
}

/// App theme configuration
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.blue500,
    scaffoldBackgroundColor: AppColors.offWhite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.blue500,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.black02,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: AppColors.black02),
      bodyMedium: TextStyle(color: AppColors.black02),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.blue500,
      secondary: AppColors.green500,
      error: AppColors.red500,
      surface: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.blue500,
    scaffoldBackgroundColor: AppColors.black02,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black02,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.blue500,
      secondary: AppColors.green500,
      error: AppColors.red500,
      surface: Color(0xFF2A2A2A),
    ),
  );
}
