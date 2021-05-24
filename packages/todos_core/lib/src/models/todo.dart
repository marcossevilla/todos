import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  Todo._();

  factory Todo([
    @Default(false) bool complete,
    String name,
  ]) = _Todo;

  late final id = Uuid().v4();
}
