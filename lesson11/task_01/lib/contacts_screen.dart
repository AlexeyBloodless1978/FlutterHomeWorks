import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../data/contacts.dart';
import '/widgets/button_1.dart';
import 'contact_detail_screen.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final List<Contact> allContacts = ContactsData.contacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Контакты')),
      body: SafeArea(
        child: Center(
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ContactDetailScreen(contact: contact),
                          ),
                        );
                      },
                      child: Card(
                        margin: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
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

              SizedBox(height: 20),

              // Анимированная кнопка "Контакты"
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
      ),
    );
  }
}
