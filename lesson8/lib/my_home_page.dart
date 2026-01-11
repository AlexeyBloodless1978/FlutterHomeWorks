import 'package:flutter/material.dart';
import 'grid_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:SafeArea(top: false,
          child: Text('ЛЕНТА НОВОСТЕЙ'),
        ),
      ),
      body: Stack(
          children: [
            const GridViewWidget(itemCount :42),

          Positioned(
        right: 20,
        bottom: 20,
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: (){},
            child: const Text('+'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
      ),

      ],
      ),
    );
  }
}

