import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tododayapp_p/models/task-provider.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    final taskData =
        Provider.of<TaskData>(context, listen: false); // Declaring once

    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.teal[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              taskData.addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.teal[400]),
          ),
        ],
      ),
    );
  }
}
