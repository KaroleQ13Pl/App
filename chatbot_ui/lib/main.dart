import 'package:flutter/material.dart';
import 'chat_screen.dart'; // Importujemy nasz nowy ekran

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatScreen(), // Nasz ekran startowy
    );
  }
}
