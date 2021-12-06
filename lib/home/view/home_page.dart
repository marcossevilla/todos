import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todos/completed_todos/completed_todos.dart';
import 'package:todos/home/widgets/todo_card.dart';
import 'package:todos/todos/todos.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TodosBloc()),
        BlocProvider(
          create: (context) => CompletedTodosCubit(context.read<TodosBloc>()),
        ),
      ],
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
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
        floatingActionButton: const _BottomButtons(),
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  const _BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          key: UniqueKey(),
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet<void>(
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
