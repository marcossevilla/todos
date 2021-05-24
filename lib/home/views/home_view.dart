import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/completed_todos/completed_todos.dart';
import 'package:todos/todos/todos.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TodosBloc()),
        BlocProvider(
          create: (context) => CompletedTodosCubit(context.watch<TodosBloc>()),
        ),
      ],
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.check)),
            ],
          ),
          title: Text('Todos'),
        ),
        body: TabBarView(
          children: [
            TodosPage(),
            CompletedTodosPage(),
          ],
        ),
      ),
    );
  }
}
