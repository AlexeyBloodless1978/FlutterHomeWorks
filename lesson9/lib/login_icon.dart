import 'package:flutter/material.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0x80c9e9FF),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.lock,
            color: Colors.blue,
            size: 30,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Вход в систему',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}