import 'package:flutter/material.dart';
import 'news_card.dart';

class GridViewWidget extends StatelessWidget {
  final int itemCount;

  const GridViewWidget({super.key, this.itemCount=21});

  @override
  Widget build(BuildContext context) {
    return
      LayoutBuilder(
          builder: (context, constraints) {
            final int crossAxisCountCurrent = constraints.maxWidth > 600 ? 3 : 2;

            final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCountCurrent,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.8,
            );

            return GridView.builder(
              gridDelegate: gridDelegate,
              itemCount: itemCount,
              itemBuilder: (context, index) => NewsCard(index: index),

             /* itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Text('Элемент $index'),
                  ),
                );
              },*/


            );
          },
      );

  }
}

