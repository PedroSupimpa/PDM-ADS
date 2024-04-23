import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/task.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  set tasks(List<Task> value) {
    _tasks = value;
  }

  addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void delete(Task task) {
    _tasks = [];
    notifyListeners();
  }
}
