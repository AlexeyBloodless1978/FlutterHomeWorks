import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Счётчик: $_counter",
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: _increment,
          child: Text("Увеличить"),
        )
      ],
    );
  }
}