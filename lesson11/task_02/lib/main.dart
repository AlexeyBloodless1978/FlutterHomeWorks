import 'package:flutter/material.dart';
import 'main_screen_contacts.dart';
import 'package:go_router/go_router.dart';
import 'contact_details.dart';
import '../models/contact.dart';

void main() {
  runApp(MyApp());
}

final GoRouter _router = GoRouter(
  // debugLogDiagnostics: true,//Логирование в терминале, помогла найти ошибки в маршруте
  routes: [
    GoRoute(
      path: '/',
      name: 'contacts',
      builder: (context, state) => MainScreenContacts(),
      routes: [
        // Детали контакта (вложенный маршрут)
        GoRoute(
          path: '/contact/:id',
          name: 'contact_detail',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            final contact = state.extra as Contact?;
            return ContactDetailScreen(contactId: id, contact: contact);
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'my homework lessons 11 part 3',
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
    );
  }
}
