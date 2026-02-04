import 'package:flutter/material.dart';

class ErrorState extends StatelessWidget {
  final String errorMessage;

  const ErrorState({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 80),
          const SizedBox(height: 20),
          Text(
            errorMessage,
            style: const TextStyle(fontSize: 18, color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
