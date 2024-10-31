import 'package:flutter/material.dart';
import 'package:tododayapp_p/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "buy a gift"),
    Task(name: "repair the car"),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  
  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}

