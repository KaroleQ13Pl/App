import 'package:flutter/material.dart';
import 'package:chatbot_ui/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Home',
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
