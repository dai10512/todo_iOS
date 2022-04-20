// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todosList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodosListData _$$_TodosListDataFromJson(Map<String, dynamic> json) =>
    _$_TodosListData(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Todo>[],
    );

Map<String, dynamic> _$$_TodosListDataToJson(_$_TodosListData instance) =>
    <String, dynamic>{
      'todos': instance.todos,
    };
