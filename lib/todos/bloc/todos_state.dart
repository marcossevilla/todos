part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.empty() = _Empty;
  const factory TodosState.data(List<Todo> todos) = _Data;
}
