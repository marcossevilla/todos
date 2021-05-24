// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosEventTearOff {
  const _$TodosEventTearOff();

  _Started started() {
    return const _Started();
  }

  _TodoAdded todoAdded(Todo todoAdded) {
    return _TodoAdded(
      todoAdded,
    );
  }

  _TodoDeleted todoDeleted(Todo todoDeleted) {
    return _TodoDeleted(
      todoDeleted,
    );
  }

  _TodosCleared todosCleared() {
    return const _TodosCleared();
  }
}

/// @nodoc
const $TodosEvent = _$TodosEventTearOff();

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todoAdded) todoAdded,
    required TResult Function(Todo todoDeleted) todoDeleted,
    required TResult Function() todosCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todoAdded)? todoAdded,
    TResult Function(Todo todoDeleted)? todoDeleted,
    TResult Function()? todosCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_TodosCleared value) todosCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_TodosCleared value)? todosCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res> implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  final TodosEvent _value;
  // ignore: unused_field
  final $Res Function(TodosEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TodosEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todoAdded) todoAdded,
    required TResult Function(Todo todoDeleted) todoDeleted,
    required TResult Function() todosCleared,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todoAdded)? todoAdded,
    TResult Function(Todo todoDeleted)? todoDeleted,
    TResult Function()? todosCleared,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_TodosCleared value) todosCleared,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_TodosCleared value)? todosCleared,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TodosEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$TodoAddedCopyWith<$Res> {
  factory _$TodoAddedCopyWith(
          _TodoAdded value, $Res Function(_TodoAdded) then) =
      __$TodoAddedCopyWithImpl<$Res>;
  $Res call({Todo todoAdded});
}

/// @nodoc
class __$TodoAddedCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$TodoAddedCopyWith<$Res> {
  __$TodoAddedCopyWithImpl(_TodoAdded _value, $Res Function(_TodoAdded) _then)
      : super(_value, (v) => _then(v as _TodoAdded));

  @override
  _TodoAdded get _value => super._value as _TodoAdded;

  @override
  $Res call({
    Object? todoAdded = freezed,
  }) {
    return _then(_TodoAdded(
      todoAdded == freezed
          ? _value.todoAdded
          : todoAdded // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_TodoAdded implements _TodoAdded {
  const _$_TodoAdded(this.todoAdded);

  @override
  final Todo todoAdded;

  @override
  String toString() {
    return 'TodosEvent.todoAdded(todoAdded: $todoAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoAdded &&
            (identical(other.todoAdded, todoAdded) ||
                const DeepCollectionEquality()
                    .equals(other.todoAdded, todoAdded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoAdded);

  @JsonKey(ignore: true)
  @override
  _$TodoAddedCopyWith<_TodoAdded> get copyWith =>
      __$TodoAddedCopyWithImpl<_TodoAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todoAdded) todoAdded,
    required TResult Function(Todo todoDeleted) todoDeleted,
    required TResult Function() todosCleared,
  }) {
    return todoAdded(this.todoAdded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todoAdded)? todoAdded,
    TResult Function(Todo todoDeleted)? todoDeleted,
    TResult Function()? todosCleared,
    required TResult orElse(),
  }) {
    if (todoAdded != null) {
      return todoAdded(this.todoAdded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_TodosCleared value) todosCleared,
  }) {
    return todoAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_TodosCleared value)? todosCleared,
    required TResult orElse(),
  }) {
    if (todoAdded != null) {
      return todoAdded(this);
    }
    return orElse();
  }
}

abstract class _TodoAdded implements TodosEvent {
  const factory _TodoAdded(Todo todoAdded) = _$_TodoAdded;

  Todo get todoAdded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TodoAddedCopyWith<_TodoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoDeletedCopyWith<$Res> {
  factory _$TodoDeletedCopyWith(
          _TodoDeleted value, $Res Function(_TodoDeleted) then) =
      __$TodoDeletedCopyWithImpl<$Res>;
  $Res call({Todo todoDeleted});
}

/// @nodoc
class __$TodoDeletedCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$TodoDeletedCopyWith<$Res> {
  __$TodoDeletedCopyWithImpl(
      _TodoDeleted _value, $Res Function(_TodoDeleted) _then)
      : super(_value, (v) => _then(v as _TodoDeleted));

  @override
  _TodoDeleted get _value => super._value as _TodoDeleted;

  @override
  $Res call({
    Object? todoDeleted = freezed,
  }) {
    return _then(_TodoDeleted(
      todoDeleted == freezed
          ? _value.todoDeleted
          : todoDeleted // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_TodoDeleted implements _TodoDeleted {
  const _$_TodoDeleted(this.todoDeleted);

  @override
  final Todo todoDeleted;

  @override
  String toString() {
    return 'TodosEvent.todoDeleted(todoDeleted: $todoDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoDeleted &&
            (identical(other.todoDeleted, todoDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.todoDeleted, todoDeleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoDeleted);

  @JsonKey(ignore: true)
  @override
  _$TodoDeletedCopyWith<_TodoDeleted> get copyWith =>
      __$TodoDeletedCopyWithImpl<_TodoDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todoAdded) todoAdded,
    required TResult Function(Todo todoDeleted) todoDeleted,
    required TResult Function() todosCleared,
  }) {
    return todoDeleted(this.todoDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todoAdded)? todoAdded,
    TResult Function(Todo todoDeleted)? todoDeleted,
    TResult Function()? todosCleared,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(this.todoDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_TodosCleared value) todosCleared,
  }) {
    return todoDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_TodosCleared value)? todosCleared,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(this);
    }
    return orElse();
  }
}

abstract class _TodoDeleted implements TodosEvent {
  const factory _TodoDeleted(Todo todoDeleted) = _$_TodoDeleted;

  Todo get todoDeleted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TodoDeletedCopyWith<_TodoDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodosClearedCopyWith<$Res> {
  factory _$TodosClearedCopyWith(
          _TodosCleared value, $Res Function(_TodosCleared) then) =
      __$TodosClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodosClearedCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$TodosClearedCopyWith<$Res> {
  __$TodosClearedCopyWithImpl(
      _TodosCleared _value, $Res Function(_TodosCleared) _then)
      : super(_value, (v) => _then(v as _TodosCleared));

  @override
  _TodosCleared get _value => super._value as _TodosCleared;
}

/// @nodoc

class _$_TodosCleared implements _TodosCleared {
  const _$_TodosCleared();

  @override
  String toString() {
    return 'TodosEvent.todosCleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TodosCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todoAdded) todoAdded,
    required TResult Function(Todo todoDeleted) todoDeleted,
    required TResult Function() todosCleared,
  }) {
    return todosCleared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todoAdded)? todoAdded,
    TResult Function(Todo todoDeleted)? todoDeleted,
    TResult Function()? todosCleared,
    required TResult orElse(),
  }) {
    if (todosCleared != null) {
      return todosCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_TodosCleared value) todosCleared,
  }) {
    return todosCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_TodosCleared value)? todosCleared,
    required TResult orElse(),
  }) {
    if (todosCleared != null) {
      return todosCleared(this);
    }
    return orElse();
  }
}

abstract class _TodosCleared implements TodosEvent {
  const factory _TodosCleared() = _$_TodosCleared;
}

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _Data data(List<Todo> todos) {
    return _Data(
      todos,
    );
  }
}

/// @nodoc
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Todo> todos) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Todo> todos)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'TodosState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Todo> todos) data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Todo> todos)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Data value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements TodosState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_Data(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodosState.data(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Todo> todos) data,
  }) {
    return data(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Todo> todos)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements TodosState {
  const factory _Data(List<Todo> todos) = _$_Data;

  List<Todo> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
