import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual sua cor preferida?',
    'Qual seu animal preferido?',
  ];

  void responder() {
    print('Pergunta respondida!');
  }

  PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[0]),
          const ElevatedButton(
            onPressed: perguntas(),
            child: Text('Resposta 1'),
          ),
          const ElevatedButton(
            onPressed: perguntas(),
            child: Text('Resposta 2'),
          ),
          const ElevatedButton(
            onPressed: perguntas(),
            child: Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}
