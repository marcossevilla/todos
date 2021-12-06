import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/todos/todos.dart';

class TodoCard extends StatefulWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  final _formKey = GlobalKey<FormState>();

  Todo todo = Todo(name: '');

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Name',
                ),
                onSaved: (name) {
                  setState(() => todo = todo.copyWith(name: name!));
                },
                validator: (value) => value!.trim().isEmpty ? 'Fill up' : null,
              ),
              TextButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  _formKey.currentState!.save();
                  context.read<TodosBloc>().add(TodosEvent.todoAdded(todo));
                },
                child: const Text('Add to list'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
