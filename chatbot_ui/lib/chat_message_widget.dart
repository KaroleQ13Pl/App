import 'package:flutter/material.dart';

// Reprezentuje pojedynczą wiadomość w UI
class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget({required this.text, super.key});

  final String text; // Treść wiadomości

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(child: Text('U')), // Awatar użytkownika
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Użytkownik',
                  style: Theme.of(context).textTheme.titleMedium,
                ), // Nazwa
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(text), // Tekst
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
