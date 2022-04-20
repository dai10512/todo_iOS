import 'package:todo/model/todo.dart';
import 'package:todo/model/todosList.dart';
import 'package:uuid/uuid.dart';
import 'package:riverpod/riverpod.dart';

final todoListStateController = StateNotifierProvider<TodosListStateController, TodosList>(
  (ref) => TodosListStateController(TodosList()),
);

class TodosListStateController extends StateNotifier<TodosList> {
  TodosListStateController(TodosList state) : super(state);
  // void todoAdd(){
  //   state.add()
  // }
  final _uuid = Uuid();

  void add(String title) {
    final currentState = state;
    final todos = currentState.todos.toList()
      ..add(
        Todo(id: _uuid.v4(), title: title),
      );
    state = currentState.copyWith(
      todos: todos,
    );
  }
}

//   void toggle(Todo todo) {
//     final currentState = state;
//     if (currentState is TodosStateData) {
//       // Todoを検索してcomplatedをtoggleし、stateを更新
//       final clone = currentState.todos.map((t) {
//         if (t == todo) {
//           return t.copyWith(
//             completed: !t.completed,
//           );
//         }
//         return t;
//       }).toList();
//       state = TodosState(
//         todos: clone,
//       );
//     }
  // }

  // final _uuid = Uuid();

  // @override
  // void initState() async {
  //   await Future<void>.delayed(const Duration(seconds: 3));

  //   state = TodosList(
  //     todos: [Todo(id: _uuid.v4(), title: 'todo1'), Todo(id: _uuid.v4(), title: 'todo2'), Todo(id: _uuid.v4(), title: 'todo3')],
  //   );
  // }
// }
