import 'package:flutter/material.dart';

class ChangedWidget extends StatefulWidget {
  const ChangedWidget({super.key});

  @override
  _ChangedWidgetState createState() => _ChangedWidgetState();
}

class _ChangedWidgetState  extends State<ChangedWidget> {
  String _text = 'Привет, Flutter!';
//  bool _changed = false;

  void _change() {
      setState(() {
        _text = 'Вы нажали кнопку!';
      });
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