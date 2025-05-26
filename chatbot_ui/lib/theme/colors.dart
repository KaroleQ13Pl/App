import 'package:flutter/material.dart';

/// Centralny kontener na wszystkie palety kolorów w aplikacji.
///
/// Zamiast definiować kolory globalnie, grupujemy je w palety (jasną i ciemną),
/// co zapewnia lepszą organizację i zapobiega pomyłkom.
/// Dostęp do kolorów uzyskujemy przez `AppColors.light.primary` lub `AppColors.dark.primary`.
abstract class AppColors {
  static const _LightPalette light = _LightPalette();
  static const _DarkPalette dark = _DarkPalette();
}

/// Paleta kolorów dla motywu jasnego.
class _LightPalette {
  const _LightPalette(); // Konstruktor `const` dla optymalizacji

  final Color primary = const Color(0xFF005B96);
  final Color secondary = const Color(0xFF64C5F6);
  final Color background = const Color(0xFFF5F5F5);
  final Color surface = const Color(0xFFFFFFFF);
  final Color error = const Color(0xFFB00020);
  final Color textPrimary = const Color(0xFF121212);
  final Color textSecondary = const Color(0xFF757575);
  final Color border = const Color(0xFFE0E0E0);
}

/// Paleta kolorów dla motywu ciemnego.
class _DarkPalette {
  const _DarkPalette(); // Konstruktor `const` dla optymalizacji

  // Kolory są często mniej nasycone, aby nie męczyć wzroku.
  final Color primary = const Color(0xFF82AAFF);
  final Color secondary = const Color(0xFF3D5AFE);
  final Color background = const Color(0xFF121212);
  final Color surface = const Color(0xFF1E1E1E);
  final Color error = const Color(0xFFCF6679);
  final Color textPrimary = const Color(0xFFE0E0E0);
  final Color textSecondary = const Color(0xFFB3B3B3);
  final Color border = const Color(0xFF3A3A3A);
}
