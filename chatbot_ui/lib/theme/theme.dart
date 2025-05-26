import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot_ui/theme/colors.dart';

class AppTheme {
  // Prywatny konstruktor, aby nikt przypadkowo nie stworzył instancji tej klasy.
  AppTheme._();
  // Motyw jasny
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.light.primary,
    colorScheme: ColorScheme.light(
      primary: AppColors.light.primary,
      secondary: AppColors.light.secondary,
      surface: AppColors.light.surface,
      error: AppColors.light.error,
      onPrimary: AppColors.light.textPrimary,
      onSecondary: AppColors.light.textSecondary,
      onSurface: AppColors.light.textPrimary,
      onError: AppColors.light.textPrimary,
    ),
    scaffoldBackgroundColor: AppColors.light.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.light.primary,

      titleTextStyle: GoogleFonts.roboto(
        color: AppColors.light.textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
