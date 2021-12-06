part of 'todos_bloc.dart';

/// {@template todos_event}
/// Event union class for every possible [TodosEvent].
/// {@endtemplate}
@freezed
class TodosEvent with _$TodosEvent {
  /// {@macro todos_event}
  const factory TodosEvent.todoAdded(Todo todoAdded) = _TodoAdded;

  /// {@macro todos_event}
  const factory TodosEvent.todoUpdated(
    Todo todoAdded, {
    required bool complete,
  }) = _TodoUpdated;

  /// {@macro todos_event}
  const factory TodosEvent.todoDeleted(Todo todoDeleted) = _TodoDeleted;

  /// {@macro todos_event}
  const factory TodosEvent.todosCleared() = _TodosCleared;
}
