import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:practice_01/todos/todos_store.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({super.key});

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  final _store = TodosStore();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobx Todos List'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Добавьте новое задание в список дел',
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      _store.addTodo(_controller.text);
                      _controller.text= '';
                    },
                    child: Text('Добавить'),
                  ),
                ],
              ),
              //Observer(builder: (context) =>  Text('Общее количество дел: ${_store.todoCount}'))
              Observer(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Общее количество дел: ${_store.todoCount}'),
                  );
                },
              ),

              Observer(
                builder: (context) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: _store.todos.length,
                      itemBuilder: (context, index) {
                        final todo = _store.todos[index];

                        return ListTile(
                        //  title: Text(_store.todos[index]),
                          title: Text(todo),
                          trailing: IconButton(
                              onPressed: (){
                                _store.removeTodoAt(index);
                              },
                              icon: const Icon(Icons.delete)),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
