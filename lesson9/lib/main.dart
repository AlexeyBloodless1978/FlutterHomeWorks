import 'package:flutter/material.dart';
//import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lesson 9 login form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(),
    );
  }
}*/


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SafeArea Пример'),
        ),
        // Оборачиваем body в SafeArea
        body: SafeArea(
          // Добавляет отступы для всего контента внизу и по бокам (если есть вырезы или панель навигации)
          child: Column( // Или любой другой виджет с вашим контентом
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                child: const Center(child: Text('Это заголовок, не перекрывается AppBar', style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Основной контент, который не будет обрезан системными элементами',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // Этот Container может быть снизу, и SafeArea позаботится о отступе от панели навигации
              Container(
                color: Colors.grey,
                height: 50,
                child: const Center(child: Text('Нижний элемент', style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
