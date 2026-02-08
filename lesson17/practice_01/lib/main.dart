import 'package:flutter/material.dart';
import '/todos/todos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyHomeWork 17 task 1',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TodosPage(), // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

