import 'package:flutter/material.dart';
//import 'dart:math';

void main() {
  runApp(MaterialApp(home: InheritedTestPage()));
}

class InheritedNumber extends InheritedWidget {
  const InheritedNumber({
   required this.number,
   required super.child,
   super.key,
});

  final int number;

  static InheritedNumber? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedNumber>();
  }

  static InheritedNumber of(BuildContext context) {
    final InheritedNumber? result = maybeOf(context);
    assert(result != null, 'No InheritedNumber found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedNumber oldWidget) =>
      number != oldWidget.number;

}

class InheritedTestPage extends StatefulWidget {
  @override
  State<InheritedTestPage> createState() => _InheritedTestPageState();
  }

  class _InheritedTestPageState extends State<InheritedTestPage> {
  void _incrementCounter(){
    _countNumber=_countNumber+1;
  }

   int _countNumber = 0;

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: InheritedNumber(number: _countNumber,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _incrementCounter();
                      });
                    },
                    child: const Text('Add 1'),
                ),
              const SizedBox(height: 16),
              Text('Number in RandomizerPage: $_countNumber'),
              const SizedBox(height: 16),
              ],
            ),
          ),
      ),
    );
  }
  }

