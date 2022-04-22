import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/stateController.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TODOアプリ'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(context, ref) {
    final newTodoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Consumer(
          builder: (context, ref, child) {
            final todoList = ref.watch(todoListStateController);

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: Flexible(
                      child: ListView.builder(
                        itemCount: todoList.todos.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Dismissible(
                            direction: DismissDirection.endToStart,
                            key: Key(title),
                            background: Container(
                              padding: const EdgeInsets.all(15),
                              alignment: AlignmentDirectional.centerEnd,
                              color: Colors.red,
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            onDismissed: (direction) {
                              ref.read(todoListStateController.notifier).deleteTodo(todoList.todos[index].id.toString());
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('dismissed')));
                              // print(todoList.todos.length);
                            },
                            child: Card(
                              child: ListTile(
                                title: Text(todoList.todos[index].title.toString()),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          // ref.read(todoListStateController.notifier).update();
          await aaa(context, ref, newTodoController);
        },
      ),
    );
  }
}

Future aaa(context, ref, newTodoController) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 100,
        // padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: newTodoController,
                decoration: const InputDecoration(labelText: "新規TODO"),
              ),
            ),
            Container(
              height: 20,
              child: ElevatedButton(
                child: const Text('新規登録'),
                onPressed: () {
                  var title = newTodoController.text;
                  ref.read(todoListStateController.notifier).add(title);
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("'$title'を新規登録しました"),
                    ),
                  );
                  newTodoController.clear();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
