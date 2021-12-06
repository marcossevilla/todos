import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos/todos/todos.dart';

part 'completed_todos_state.dart';
part 'completed_todos_cubit.freezed.dart';

/// {@template completed_todos_cubit}
/// Listens to [TodosBloc] and filters the completed todos.
/// {@endtemplate}
class CompletedTodosCubit extends Cubit<CompletedTodosState> {
  ///{@macro completed_todos_cubit}
  CompletedTodosCubit(
    this.todosBloc,
  ) : super(const CompletedTodosState.empty()) {
    _todosSubscription = todosBloc.stream.listen(
      (state) {
        state.when(
          empty: () => const CompletedTodosState.empty(),
          data: _handleSubscription,
        );
      },
    );
  }

  /// [TodosBloc] instance that will be subscribed to
  /// in order to update state with completed todos.
  final TodosBloc todosBloc;
  late StreamSubscription _todosSubscription;

  void _handleSubscription(List<Todo> todos) {
    final completedTodos = todos.where((todo) => todo.complete).toList();

    if (completedTodos.isEmpty) {
      return emit(const CompletedTodosState.empty());
    }

    emit(CompletedTodosState.data(completedTodos));
  }

  @override
  Future<void> close() {
    _todosSubscription.cancel();
    return super.close();
  }
}
