import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class ChangedWidget extends StatefulWidget {
  @override
  _ChangedWidgetState createState() => _ChangedWidgetState();
}

class _ChangedWidgetState  extends State<ChangedWidget> {
  String _text = 'Привет, Flutter!';
  bool _changed = false;

  void _change() {
    if (_changed==false) {
    setState(() {
      _text = 'Вы нажали кнопку!';
      _changed = true;
      super.dispose();
    });}
  }
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _text,
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed:  _change ,
          child: Text("Нажми меня",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Моё первое приложение',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: ChangedWidget()),
          ],
        ),
      ),
    );
  }
}