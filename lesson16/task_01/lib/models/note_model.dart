import 'package:flutter/material.dart';
import 'note.dart';

class NoteModel extends ChangeNotifier {
  List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(String title, String category) {
    if (title.trim().isEmpty || title == '') return;

    final note = Note(title: title, category: category);

    _notes.add(note);

    notifyListeners();
  }

  void removeNote(int index) {
    if (index >= 0 && index < _notes.length) {
      _notes.removeAt(index);

      notifyListeners();
    }
  }
}
