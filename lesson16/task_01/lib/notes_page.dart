import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/note_model.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final _titleController = TextEditingController();
  final _categoryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //Не забываем удалять контроллеры
  @override
  void dispose() {
    _titleController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  void _addNote() {
    if (_formKey.currentState!.validate()) {
      final noteModel = Provider.of<NoteModel>(context, listen: false);
      noteModel.addNote(
        _titleController.text,
        _categoryController.text.isNotEmpty
            ? _categoryController.text
            : 'Без категории',
      );

      _titleController.clear();
      _categoryController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Мои заметки')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Заголовок заметки',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.title),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Введите заголовок';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: _categoryController,
                    decoration: InputDecoration(
                      labelText: 'Категория (необязательно)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.category),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _addNote,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Добавить заметку',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Заголовок списка
            Row(
              children: [
                Text(
                  'Список заметок',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                // виджет , который используется для создания гибкого пространства между виджетами в Row, Column или Flex
                Consumer<NoteModel>(
                  builder: (context, noteModel, child) {
                    return Text(
                      'Всего: ${noteModel.notes.length}',
                      style: TextStyle(color: Colors.grey[600]),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 16),

            // Список заметок
            Expanded(
              //виджет, который заставляет дочерний элемент занимать все доступное пространство в родительском Row, Column или Flex
              child: Consumer<NoteModel>(
                builder: (context, noteModel, child) {
                  if (noteModel.notes.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.note_add,
                            size: 64,
                            color: Colors.grey[400],
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Нет заметок',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Добавьте первую заметку',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    );
                  }

                  return Scrollbar(
                    //С автоматическим скролбаром лучше видно что заметок больше чем экран
                    child: ListView.builder(
                      itemCount: noteModel.notes.length,
                      itemBuilder: (context, index) {
                        final note = noteModel.notes[index];

                        return Card(
                          margin: EdgeInsets.only(bottom: 12),
                          elevation: 2, // эфект тени 0 - нет 12+ максимальная
                          child: ListTile(
                            contentPadding: EdgeInsets.all(16),
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue.shade100,
                              child: Icon(Icons.note, color: Colors.blue),
                            ),
                            title: Text(
                              note.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 4),
                                Text(
                                  'Категория: ${note.category}',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete_outline,
                                color: Colors.grey[500],
                              ),
                              onPressed: () {
                                final String noteTitle = note.title;
                                noteModel.removeNote(index);

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Заметка $noteTitle удалена'),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
