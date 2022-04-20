// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todosList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodosList _$TodosListFromJson(Map<String, dynamic> json) {
  return _TodosListData.fromJson(json);
}

/// @nodoc
mixin _$TodosList {
  List<Todo> get todos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodosListCopyWith<TodosList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosListCopyWith<$Res> {
  factory $TodosListCopyWith(TodosList value, $Res Function(TodosList) then) =
      _$TodosListCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodosListCopyWithImpl<$Res> implements $TodosListCopyWith<$Res> {
  _$TodosListCopyWithImpl(this._value, this._then);

  final TodosList _value;
  // ignore: unused_field
  final $Res Function(TodosList) _then;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$TodosListDataCopyWith<$Res>
    implements $TodosListCopyWith<$Res> {
  factory _$TodosListDataCopyWith(
          _TodosListData value, $Res Function(_TodosListData) then) =
      __$TodosListDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$TodosListDataCopyWithImpl<$Res> extends _$TodosListCopyWithImpl<$Res>
    implements _$TodosListDataCopyWith<$Res> {
  __$TodosListDataCopyWithImpl(
      _TodosListData _value, $Res Function(_TodosListData) _then)
      : super(_value, (v) => _then(v as _TodosListData));

  @override
  _TodosListData get _value => super._value as _TodosListData;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_TodosListData(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodosListData with DiagnosticableTreeMixin implements _TodosListData {
  const _$_TodosListData({final List<Todo> todos = const <Todo>[]})
      : _todos = todos;

  factory _$_TodosListData.fromJson(Map<String, dynamic> json) =>
      _$$_TodosListDataFromJson(json);

  final List<Todo> _todos;
  @override
  @JsonKey()
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodosList(todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodosList'))
      ..add(DiagnosticsProperty('todos', todos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodosListData &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$TodosListDataCopyWith<_TodosListData> get copyWith =>
      __$TodosListDataCopyWithImpl<_TodosListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodosListDataToJson(this);
  }
}

abstract class _TodosListData implements TodosList {
  const factory _TodosListData({final List<Todo> todos}) = _$_TodosListData;

  factory _TodosListData.fromJson(Map<String, dynamic> json) =
      _$_TodosListData.fromJson;

  @override
  List<Todo> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodosListDataCopyWith<_TodosListData> get copyWith =>
      throw _privateConstructorUsedError;
}
