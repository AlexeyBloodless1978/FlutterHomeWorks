import 'package:flutter/material.dart';
import '../models/contact.dart';
import '/widgets/button_1.dart';

class ContactDetailScreen extends StatelessWidget {
  final Contact contact;

  const ContactDetailScreen({Key? key, required this.contact})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(contact.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Телефон: ${contact.phone}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Email: ${contact.email}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Должность: ${contact.position}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Описание:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(contact.description),
                ],
              ),
            ),

            SizedBox(height: 20),

            AnimatedButton(
              icon: Icons.arrow_back,
              text: 'Назад',
              color: Colors.blueGrey,
              onPressed: () => {
                // Возврат на предыдущий экран
                Navigator.pop(context),
              },
              width: 250,
              borderRadius: 20,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),

            SizedBox(height: 20),

            AnimatedButton(
              icon: Icons.arrow_back,
              text: 'Главный экран',
              color: Colors.blueGrey,
              onPressed: () => {
                // Возврат на Главный экран
                Navigator.popUntil(context, (route) => route.isFirst),
              },
              width: 250,
              borderRadius: 20,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
          ],
        ),
      ),
    );
  }
}
