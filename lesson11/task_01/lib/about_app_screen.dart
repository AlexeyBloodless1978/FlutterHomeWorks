import 'package:flutter/material.dart';
import 'about_app_screen.dart';
import '/widgets/button_1.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({super.key});

  @override
  _AboutAppScreenState createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Экран о приложении')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 500,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[200]!),
                ),
                child: Text(
                  'Это приложение написано в рамках изучения навигации во flutter. '
                  'Так же в этом приложении я постарался с помощью DeepSeek '
                  'реализовать виджет кнопку в отдельном файле'
                  ' и правильную организацию структуры программы',
                  style: TextStyle(fontSize: 16, height: 1.5),
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
