import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/completed_todos/completed_todos.dart';
import 'package:todos/home/widgets/todo_card.dart';
import 'package:todos/todos/todos.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => CompletedTodosCubit(
        context.read<TodosBloc>(),
      ),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.check)),
            ],
          ),
          title: const Text('Todos'),
        ),
        body: const TabBarView(
          children: [
            TodosPage(),
            CompletedTodosPage(),
          ],
        ),
        floatingActionButton: const FloatingActionButtons(),
      ),
    );
  }
}

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          key: UniqueKey(),
          child: const Icon(Icons.add),
          onPressed: () async {
            await showModalBottomSheet<void>(
              context: context,
              builder: (_) => const TodoCard(),
            );
          },
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          key: UniqueKey(),
          child: const Icon(Icons.clear),
          onPressed: () {
            context.read<TodosBloc>().add(const TodosEvent.todosCleared());
          },
        ),
      ],
    );
  }
}
