import 'package:flutter/material.dart';

class CrazyCircle extends StatefulWidget {
  const CrazyCircle({super.key});

  @override
  _CrazyCircleState createState() => _CrazyCircleState();
}

class _CrazyCircleState extends State<CrazyCircle> {
  bool _atStart = true;
  final double _circleSize = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Задание 2, движущийся круг'),centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _atStart = !_atStart;
          });
        },
        child: Stack(
          children: [
            // Фон
            Container(color: Colors.grey[50]),

            // Анимированная позиция круга
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeInOut,
              left: _atStart ? 50 : MediaQuery.of(context).size.width - _circleSize - 50,
              top: _atStart ? 150 : MediaQuery.of(context).size.height - _circleSize - 150,
              child: Container(
                width: _circleSize,
                height: _circleSize,
                decoration: BoxDecoration(
                  color: _atStart ? Colors.blue : Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    _atStart ? Icons.arrow_downward : Icons.arrow_upward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),

            // Инструкция
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    _atStart ? 'Нажмите, чтобы переместить вправо-вниз' : 'Нажмите, чтобы вернуть обратно',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: _atStart ? Colors.blue : Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}