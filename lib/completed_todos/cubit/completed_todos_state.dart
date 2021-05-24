part of 'completed_todos_cubit.dart';

@freezed
class CompletedTodosState with _$CompletedTodosState {
  const factory CompletedTodosState.empty() = _Empty;
  const factory CompletedTodosState.data(List<Todo> todos) = _Data;
}
