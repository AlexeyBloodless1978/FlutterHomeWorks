import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/contact.dart';
import '../widgets/contact_info.dart';

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
      body: SafeArea(
        child: contact != null
            ? ContactInfo(contact: contact)
            //    ? _buildContactInfo(contact)
            : Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(), // Назад
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
