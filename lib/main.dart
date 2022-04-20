import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/model/todo.dart';
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Consumer(
          builder: (context, ref, child) {
            final todoList = ref.watch(todoListStateController);
            print(todoList.todos.length);

            return Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                TextFormField(
                  enabled: true,
                  maxLength: 20,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "新規TODO"),
                  onTap: () {
                    ref.read(todoListStateController.notifier).add;
                    print('pushed');
                  },
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: todoList.todos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return const Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.face),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ]),
            );
          },
        ),
      ),
    );
  }
}


    // final ColorState colorProvider = ref.watch(colorStateController);