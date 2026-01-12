import 'package:flutter/material.dart';

class AnimatedBox extends StatelessWidget {
  final bool firstWidget;

  const AnimatedBox({Key? key, this.firstWidget = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int numberBox = firstWidget ? 1 : 2;
    return Container(
      //    key: const ValueKey('second'),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: firstWidget ? Colors.blue : Colors.orange,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: firstWidget
                ? Colors.blue.withAlpha(128)
                : Colors.orange.withAlpha(128),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Контейнер $numberBox',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}