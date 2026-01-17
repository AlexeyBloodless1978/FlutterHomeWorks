import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/contact.dart';

class ContactDetailScreen extends StatelessWidget {
  final String contactId;
  final Contact? contact;

  const ContactDetailScreen({required this.contactId, this.contact});

  @override
  Widget build(BuildContext context) {
    final contact = this.contact; // Локальная переменная

    return Scaffold(
      appBar: AppBar(
        title: Text('Контакт $contactId'),
        //Кнопка редактирования контакта
        /*  actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              context.go('/contacts/$contactId/edit', extra: contact);
            },
          ),
        ],*/
      ),
      body: contact != null
          ? _buildContactInfo(contact)
          : Center(child: CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(), // Назад
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

Widget _buildContactInfo(Contact contact) {
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
        Text('Должность: ${contact.position}', style: TextStyle(fontSize: 18)),
      ],
    ),
  );
}
