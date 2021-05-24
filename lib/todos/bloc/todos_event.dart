part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.todoAdded(Todo todoAdded) = _TodoAdded;
  const factory TodosEvent.todoUpdated(
    Todo todoAdded,
    bool complete,
  ) = _TodoUpdated;
  const factory TodosEvent.todoDeleted(Todo todoDeleted) = _TodoDeleted;
  const factory TodosEvent.todosCleared() = _TodosCleared;
}
