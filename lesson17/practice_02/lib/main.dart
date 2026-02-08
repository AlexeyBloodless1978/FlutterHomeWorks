import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'counter/counter_page.dart';

import 'package:practice_02/counter/state/counter_state.dart';
import 'package:redux/redux.dart';

import 'counter/counter_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final counterStore = Store<CounterState>(
    counterReducer,
    initialState: const CounterState(count: 0, history: []),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CounterState>(
      store: counterStore,
      child: MaterialApp(
        title: 'MyHomeWork 17 task 2',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: CounterPage(),
      ),
    );
  }
}
