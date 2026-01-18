import 'package:flutter/material.dart';
import '../models/contact.dart';

class ContactInfo extends StatelessWidget {
  final Contact contact;

  const ContactInfo({Key? key, required this.contact}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              child: Text(contact.name[0], style: TextStyle(fontSize: 40)),
            ),
          ),
          SizedBox(height: 20),
          Text('Имя: ${contact.name}', style: TextStyle(fontSize: 18)),
          Text('Телефон: ${contact.phone}', style: TextStyle(fontSize: 18)),
          Text('Email: ${contact.email}', style: TextStyle(fontSize: 18)),
          Text(
            'Должность: ${contact.position}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
