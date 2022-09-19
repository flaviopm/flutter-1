// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor preferida?',
      'Qual seu animal preferido?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
