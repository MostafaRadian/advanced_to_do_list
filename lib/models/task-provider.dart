import 'package:flutter/material.dart';
import 'package:tododayapp_p/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Read a Book"),
    Task(name: "Organize a Room"),
    Task(name: "Attend a Meeting"),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
