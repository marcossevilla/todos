import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos/todos/todos.dart';
import 'package:todos_core/todos.dart';

part 'completed_todos_state.dart';
part 'completed_todos_cubit.freezed.dart';

class CompletedTodosCubit extends Cubit<CompletedTodosState> {
  late final TodosBloc _todosBloc;
  late final StreamSubscription _todosSubscription;

  CompletedTodosCubit(
    TodosBloc todosBloc,
  ) : super(CompletedTodosState.empty()) {
    _todosBloc = todosBloc;

    _todosSubscription = _todosBloc.stream.listen((state) {
      state.maybeWhen(
        data: _handleSubscription,
        orElse: () {},
      );
    });
  }

  void _handleSubscription(List<Todo> todos) {
    final completedTodos = todos.where((todo) => todo.complete).toList();
    emit(CompletedTodosState.data(completedTodos));
  }

  @override
  Future<void> close() {
    _todosSubscription.cancel();
    return super.close();
  }
}
