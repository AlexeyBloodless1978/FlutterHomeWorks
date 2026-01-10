import 'package:flutter/material.dart';
import 'child_widget.dart';
import 'inherited_number.dart';


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _increasingNumber = 0;

  void increaseNumber() {
    _increasingNumber =_increasingNumber+1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InheritedNumber(number: _increasingNumber,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    increaseNumber();
                  });
                },
                child: const Text('Add +1'),
              ),
              const SizedBox(height: 16),
              ChildWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
