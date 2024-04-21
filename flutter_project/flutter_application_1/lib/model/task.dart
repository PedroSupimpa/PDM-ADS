import 'package:flutter/material.dart';

class Task {
  String id;
  String title;
  TaskStatus status;
  DateTime dueTo;

  Task({
    required this.id,
    required this.title,
    required this.status,
    required this.dueTo,
  });
}

enum TaskStatus {
  toDo,
  doing,
  done;

  Color get color {
    switch (name) {
      case 'toDo':
        return Colors.red;
      case 'doing':
        return Colors.yellow;
      case 'done':
        return Colors.green;
      default:
        return Colors.black54;
    }
  }
}