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
      case 'to do':
        return Color.fromARGB(255, 235, 80, 69);
      case 'doing':
        return const Color.fromARGB(255, 238, 220, 59);
      case 'done':
        return const Color.fromARGB(255, 107, 221, 111);
      default:
        return Colors.black54;
    }
  }
}