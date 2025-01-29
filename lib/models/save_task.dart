import 'package:flutter/material.dart';
import 'package:todo_state_provider/models/task_model.dart';

class SaveTask extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: "learn flutter", isCompleted: false),
    Task(title: "hello", isCompleted: false),
    Task(title: "hef]fso", isCompleted: false)
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].isDone();
    notifyListeners();
  }
}
