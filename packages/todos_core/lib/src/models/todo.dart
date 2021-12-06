import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';

/// {@macro todo}
@freezed
class Todo with _$Todo {
  /// {@template}
  /// Base todo class.
  /// {@endtemplate}
  factory Todo({
    required String name,
    @Default(false) bool complete,
  }) = _Todo;

  Todo._();

  /// Unique identifier for a todo.
  late final id = const Uuid().v4();
}
