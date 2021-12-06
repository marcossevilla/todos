import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todos_core/todos_core.dart';

export 'package:todos_core/todos_core.dart' show Todo;

part 'todos_event.dart';
part 'todos_state.dart';
part 'todos_bloc.freezed.dart';

/// {@template todos_bloc}
///
/// {@endtemplate}
class TodosBloc extends Bloc<TodosEvent, TodosState> {
  /// {@macro todos_bloc}
  TodosBloc() : super(const TodosState.empty()) {
    on<_TodoAdded>(_onTodoAdded);
    on<_TodoUpdated>(_onTodoUpdated);
    on<_TodoDeleted>(_onTodoDeleted);
    on<_TodosCleared>(_onTodosCleared);
  }

  void _onTodoAdded(_TodoAdded event, Emitter<TodosState> emit) {
    emit(
      state.when(
        empty: () => TodosState.data([event.todoAdded]),
        data: (todos) => TodosState.data([...todos, event.todoAdded]),
      ),
    );
  }

  void _onTodoUpdated(_TodoUpdated event, Emitter<TodosState> emit) {
    emit(
      state.when(
        empty: () => const TodosState.empty(),
        data: (todos) {
          return TodosState.data([
            for (final todo in todos)
              if (todo == event.todoAdded)
                todo.copyWith(complete: event.complete)
              else
                todo
          ]);
        },
      ),
    );
  }

  void _onTodoDeleted(_TodoDeleted event, Emitter<TodosState> emit) {
    emit(
      state.when(
        empty: () => const TodosState.empty(),
        data: (todos) {
          return TodosState.data([
            for (final todo in todos)
              if (todo != event.todoDeleted) todo
          ]);
        },
      ),
    );
  }

  void _onTodosCleared(_TodosCleared event, Emitter<TodosState> emit) {
    emit(state.maybeWhen(orElse: () => const TodosState.empty()));
  }
}
