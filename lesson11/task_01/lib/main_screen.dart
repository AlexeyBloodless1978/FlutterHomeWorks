import 'package:flutter/material.dart';
import 'about_app_screen.dart';
import 'contacts_screen.dart';
import '/widgets/button_1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Главный экран')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedButton(
                icon: Icons.info,
                text: 'О приложении',
                color: Colors.blueGrey,
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutAppScreen()),
                  ),
                },
                width: 250,
                borderRadius: 20,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),

              SizedBox(height: 20),

              AnimatedButton(
                icon: Icons.contacts,
                text: 'Контакты',
                color: Colors.blueGrey,
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactsScreen()),
                  ),
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
