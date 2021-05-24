import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todos_core/todos_core.dart';

export 'package:todos_core/todos_core.dart' show Todo;

part 'todos_event.dart';
part 'todos_state.dart';
part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosState.empty());

  @override
  Stream<TodosState> mapEventToState(TodosEvent event) async* {
    yield* event.when(
      todoAdded: _mapTodoAddedToState,
      todoUpdated: _mapTodoUpdatedToState,
      todoDeleted: _mapTodoDeletedToState,
      todosCleared: _mapTodosClearedToState,
    );
  }

  Stream<TodosState> _mapTodoAddedToState(Todo todo) async* {
    yield state.when(
      empty: () => TodosState.data([todo]),
      data: (todos) => TodosState.data([...todos, todo]),
    );
  }

  Stream<TodosState> _mapTodoUpdatedToState(Todo toUpdate, bool value) async* {
    yield state.when(
      empty: () => TodosState.empty(),
      data: (todos) {
        return TodosState.data([
          for (var todo in todos)
            if (todo == toUpdate) todo.copyWith(complete: value) else todo
        ]);
      },
    );
  }

  Stream<TodosState> _mapTodoDeletedToState(Todo toDelete) async* {
    yield state.when(
      empty: () => TodosState.empty(),
      data: (todos) {
        return TodosState.data([
          for (final todo in todos)
            if (todo != toDelete) todo
        ]);
      },
    );
  }

  Stream<TodosState> _mapTodosClearedToState() async* {
    yield state.maybeWhen(orElse: () => TodosState.empty());
  }
}
