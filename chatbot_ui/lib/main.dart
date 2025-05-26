import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Importujemy nasz nowy ekran
import 'theme/theme.dart'; // Importujemy motyw aplikacji

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'n8n Chatbot', // Tytuł aplikacji
      debugShowCheckedModeBanner: false, // Usuwa baner "Debug"
      theme: AppTheme.lightTheme, // Ustawiamy motyw jasny
      //darkTheme: AppTheme.darkTheme, // Ustawiamy motyw ciemny
      themeMode: ThemeMode
          .system, // Ustawiamy motyw na systemowy (jasny/ciemny w zależności od ustawień urządzenia
      home: const HomeScreen(), // Nasz ekran startowy
    );
  }
}
