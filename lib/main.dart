import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_state_provider/models/save_task.dart';
import 'pages/add-todo.dart';
import 'pages/todo_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (Context) => SaveTask(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const TodoList(),
        '/add-todo-screen': (_) => AddtoDo(),
      },
    );
  }
}
