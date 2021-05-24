import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required bool complete,
    required String id,
    required String name,
  }) = _Todo;
}
