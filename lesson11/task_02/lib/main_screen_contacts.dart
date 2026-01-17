import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/contact.dart';
import '../data/contacts.dart';

class MainScreenContacts extends StatefulWidget {
  @override
  _MainScreenContactsState createState() => _MainScreenContactsState();
}

class _MainScreenContactsState extends State<MainScreenContacts> {
  final List<Contact> allContacts = ContactsData.contacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Контакты')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: allContacts.length,
                itemBuilder: (context, index) {
                  final contact =
                      allContacts[index]; // Получаем контакт по индексу

                  return GestureDetector(
                    onTap: () {
                      // Переходим на экран с деталями контакта
                      context.go(
                        '/contact/${index + 1}', // ID контакта
                        extra: contact, // Передача объекта
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: ListTile(
                        leading: CircleAvatar(child: Text(contact.name[0])),
                        title: Text(contact.name),
                        subtitle: Text(contact.position),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],

          /*    child: ElevatedButton(
          onPressed: () {
            // Переход на второй экран при нажатии кнопки
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Перейти на второй экран'),
        ),*/
        ),
      ),
    );
  }
}

/*
class MainScreenContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Контакты')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/contacts'),
              child: Text('О приложении'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/contacts'),
              child: Text('Контакты'),
            ),
          ],
        ),
      ),
    );
  }
}*/
