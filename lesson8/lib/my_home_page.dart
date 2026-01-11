import 'package:flutter/material.dart';
import 'grid_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ЛЕНТА НОВОСТЕЙ'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
         // mainAxisAlignment: MainAxisAlignment.center,
          Container(
              height:  MediaQuery.of(context).size.height * 0.5,
              child: const GridViewWidget(),
            ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //debugPrint('Кнопка нажата!');
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}