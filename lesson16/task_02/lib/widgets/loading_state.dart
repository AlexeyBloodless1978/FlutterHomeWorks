import 'package:flutter/material.dart';

class LoadingState extends StatelessWidget {
  final String city;

  const LoadingState({super.key, required this.city});
  @override
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
