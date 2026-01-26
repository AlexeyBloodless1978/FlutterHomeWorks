import 'package:flutter/material.dart';

class LoadingState extends StatelessWidget {
  final String city;

  const LoadingState({Key? key, required this.city}) : super(key: key);

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(color: Colors.blue),
          const SizedBox(height: 20),
          Text(
            'Загружаем погоду для ${city}...',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
