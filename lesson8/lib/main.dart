import 'package:flutter/material.dart';

void main() {
 runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // другие настройки темы
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ЛЕНТА НОВОСТЕЙ',
        style: TextStyle(fontSize: 24,
                        // fontStyle: FontStyle.italic,
                         fontWeight: FontWeight.bold
        ),)),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Вложенные отступы: общий отступ 20 пикселей и дополнительный слева 10 пикселей.',
            ),
          ),
        ),
      ),
    );
  }
}