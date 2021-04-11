import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks=[
    Task(name: 'Go to the gym.')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task=Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}