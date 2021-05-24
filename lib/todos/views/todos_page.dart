import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todos/todos/todos.dart';

class TodosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosBloc, TodosState>(
      builder: (_, state) {
        return state.when(
          empty: () => Center(child: Text('No todos yet!')),
          data: (todos) => _TodosList(todos: todos),
        );
      },
    );
  }
}

class _TodosList extends StatelessWidget {
  const _TodosList({
    Key? key,
    required this.todos,
  }) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: todos.length,
      itemBuilder: (_, index) {
        final todo = todos[index];
        return _TodoTile(todo: todo);
      },
    );
  }
}

class _TodoTile extends StatelessWidget {
  const _TodoTile({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(todo.id),
      child: CheckboxListTile(
        value: todo.complete,
        title: Text(todo.name),
        onChanged: (bool? value) {
          context.read<TodosBloc>().add(TodosEvent.todoUpdated(todo, value!));
        },
      ),
      onDismissed: (_) {
        context.read<TodosBloc>().add(TodosEvent.todoDeleted(todo));
      },
    );
  }
}
