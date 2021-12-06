part of 'completed_todos_cubit.dart';

/// {@template completed_todos_state}
/// State union class for every possible [CompletedTodosState].
/// {@endtemplate}
@freezed
class CompletedTodosState with _$CompletedTodosState {
  /// {@macro completed_todos_state}
  const factory CompletedTodosState.empty() = _Empty;

  /// {@macro completed_todos_state}
  const factory CompletedTodosState.data([
    @Default(<Todo>[]) List<Todo> todos,
  ]) = _Data;
}
