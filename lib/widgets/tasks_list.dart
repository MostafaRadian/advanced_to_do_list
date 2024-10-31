import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tododayapp_p/models/task-provider.dart';
import 'package:tododayapp_p/widgets/task_tile.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name ?? '',
              checkboxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              deleteTask: () {
                taskData.deleteTask(index); 
              },
            );
          },
        );
      },
    );
  }
}

