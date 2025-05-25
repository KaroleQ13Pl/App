import 'package:flutter/material.dart';
import 'chat_message_widget.dart'; // Importujemy nasz nowy widget

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // Kontroler do pola tekstowego
  final TextEditingController _textController = TextEditingController();
  // Lista do przechowywania wiadomości
  final List<ChatMessageWidget> _messages = [];

  // Funkcja wywoływana po wysłaniu wiadomości
  void _handleSubmitted(String text) {
    _textController.clear(); // Czyścimy pole tekstowe

    // Tworzymy nowy widget wiadomości
    ChatMessageWidget message = ChatMessageWidget(text: text);

    // Aktualizujemy stan, co powoduje przerysowanie UI
    setState(() {
      _messages.insert(0, message); // Dodajemy wiadomość na początek listy
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat z Asystentem')),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true, // Odwraca listę, nowe wiadomości na dole
              itemBuilder: (_, int index) =>
                  _messages[index], // Buduje widgety z listy
              itemCount: _messages.length, // Ilość wiadomości
            ),
          ),
          const Divider(height: 1.0), // Linia oddzielająca
          _buildTextComposer(), // Pole do wprowadzania tekstu
        ],
      ),
    );
  }

  // Widget do wprowadzania tekstu
  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),

      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController, // Podpinamy kontroler
              onSubmitted: _handleSubmitted, // Akcja po naciśnięciu "enter"
              decoration: const InputDecoration(
                hintText: 'Wpisz wiadomość...',
                filled: true, // Wypełnienie pola
                fillColor: Colors.white, // Kolor wypełnienia
                border: OutlineInputBorder(
                  // Obramowanie pola
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(
                    color: Colors.black, // Kolor obramowania
                    width: 1.0, // Grubość obramowania
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () =>
                _handleSubmitted(_textController.text), // Akcja po kliknięciu
          ),
        ],
      ),
    );
  }
}
