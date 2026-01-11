import 'package:flutter/material.dart';
import 'fade_transition_example.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final GlobalKey<FadeTransitionExampleState> _fadeKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Приложение Flutter'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
           // Center(child: ),
            FadeTransitionExample(key: _fadeKey),
            ElevatedButton(
              onPressed:  () {
                _fadeKey.currentState?.startAnimation();
              },
             child: const Text('Запуск анимации'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _fadeKey.currentState?.stopAnimation();
              },
              child: const Text('Остановить анимацию'),
            ),
          ],
        ),
      ),
    );
  }
}