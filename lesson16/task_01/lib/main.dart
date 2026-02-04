import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/note.dart';
import 'models/note_model.dart';
import 'notes_page.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create:(context) => NoteModel(),
        builder: (context, _){
          return MaterialApp(
            title: 'MyHomeWork 16 task 1',
            theme: ThemeData(

              colorScheme: .fromSeed(seedColor: Colors.deepPurple),
            ),
            home: const NotesPage(),
          );
        }
    );
  }
}