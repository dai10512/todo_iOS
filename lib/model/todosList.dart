import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:todo/model/todo.dart';

part 'todosList.freezed.dart';
part 'todosList.g.dart';

@freezed
abstract class TodosList with _$TodosList {
  const factory TodosList({
    @Default(<Todo>[]) List<Todo> todos,
  }) = _TodosListData;

  factory TodosList.fromJson(Map<String, dynamic> json) => _$TodosListFromJson(json);
}
