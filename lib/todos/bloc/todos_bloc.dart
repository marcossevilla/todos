import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_core/todos.dart';

part 'todos_event.dart';
part 'todos_state.dart';
part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosState.empty());

  @override
  Stream<TodosState> mapEventToState(
    TodosEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
