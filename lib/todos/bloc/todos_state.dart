part of 'todos_bloc.dart';

/// {@template todos_state}
/// State union class for every possible [TodosState].
/// {@endtemplate}
@freezed
class TodosState with _$TodosState {
  /// {@macro todos_state}
  const factory TodosState.empty() = _Empty;

  /// {@macro todos_state}
  const factory TodosState.data([@Default(<Todo>[]) List<Todo> todos]) = _Data;
}
