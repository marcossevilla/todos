import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/completed_todos/completed_todos.dart';

class CompletedTodosPage extends StatelessWidget {
  const CompletedTodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompletedTodosCubit, CompletedTodosState>(
      buildWhen: (previous, current) => previous != current,
      builder: (_, state) {
        return state.when(
          empty: () => const Center(child: Text('Nothing completed yet!')),
          data: (todos) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: todos.length,
              itemBuilder: (_, index) {
                final todo = todos[index];
                return ListTile(title: Text(todo.name));
              },
            );
          },
        );
      },
    );
  }
}
