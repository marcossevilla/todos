import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todos/completed_todos/completed_todos.dart';
import 'package:todos/todos/todos.dart';

import '../widgets/todo_card.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TodosBloc()),
        BlocProvider(
          lazy: false,
          create: (context) => CompletedTodosCubit(context.read<TodosBloc>()),
        ),
      ],
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
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
        floatingActionButton: _BottomButtons(scaffoldKey: _scaffoldKey),
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  const _BottomButtons({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          key: UniqueKey(),
          child: Icon(Icons.add),
          onPressed: () {
            _scaffoldKey.currentState!.showBottomSheet((_) => TodoCard());
          },
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          key: UniqueKey(),
          child: Icon(Icons.clear),
          onPressed: () {
            context.read<TodosBloc>().add(TodosEvent.todosCleared());
          },
        ),
      ],
    );
  }
}
