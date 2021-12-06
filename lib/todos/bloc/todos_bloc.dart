import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todos_core/todos_core.dart';

export 'package:todos_core/todos_core.dart' show Todo;

part 'todos_event.dart';
part 'todos_state.dart';
part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosState.empty()) {
    on<TodosEvent>((event, emit) {
      emit(
        event.when(
          todoAdded: _onTodoAdded,
          todoUpdated: _onTodoUpdated,
          todoDeleted: _onTodoDeleted,
          todosCleared: _onTodosCleared,
        ),
      );
    });
  }

  TodosState _onTodoAdded(Todo todo) {
    return state.when(
      empty: () => TodosState.data([todo]),
      data: (todos) => TodosState.data([...todos, todo]),
    );
  }

  TodosState _onTodoUpdated(Todo toUpdate, bool value) {
    return state.when(
      empty: () => TodosState.empty(),
      data: (todos) {
        return TodosState.data([
          for (var todo in todos)
            if (todo == toUpdate) todo.copyWith(complete: value) else todo
        ]);
      },
    );
  }

  TodosState _onTodoDeleted(Todo toDelete) {
    return state.when(
      empty: () => TodosState.empty(),
      data: (todos) {
        return TodosState.data([
          for (final todo in todos)
            if (todo != toDelete) todo
        ]);
      },
    );
  }

  TodosState _onTodosCleared() {
    return state.maybeWhen(orElse: () => TodosState.empty());
  }
}
