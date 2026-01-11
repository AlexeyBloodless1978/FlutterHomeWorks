import 'package:flutter/material.dart';


class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override Widget build(BuildContext context) {
    return
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text('Элемент $index'),
            ),
          );
        },
      );
  }
}

/*
Widget _gridViewWidget() {
  return SizedBox(
    height: 180,
    child: GridView.count(
      crossAxisCount: 3, // 3 колонки
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(8),
      children: List.generate(9, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.accents[index % Colors.accents.length],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Center(
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
      }),
    ),
  );
}*/