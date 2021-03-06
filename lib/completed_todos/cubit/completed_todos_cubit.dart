import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todos/todos/todos.dart';

part 'completed_todos_state.dart';
part 'completed_todos_cubit.freezed.dart';

class CompletedTodosCubit extends Cubit<CompletedTodosState> {
  final TodosBloc todosBloc;
  late StreamSubscription _todosSubscription;

  CompletedTodosCubit(
    this.todosBloc,
  ) : super(CompletedTodosState.empty()) {
    _todosSubscription = todosBloc.stream.listen((state) {
      state.maybeWhen(
        data: _handleSubscription,
        orElse: () => emit(CompletedTodosState.empty()),
      );
    });
  }

  void _handleSubscription(List<Todo> todos) {
    final completedTodos = todos.where((todo) => todo.complete).toList();

    if (completedTodos.isEmpty) {
      emit(CompletedTodosState.empty());
      return;
    }

    emit(CompletedTodosState.data(completedTodos));
  }

  @override
  Future<void> close() {
    _todosSubscription.cancel();
    return super.close();
  }
}
