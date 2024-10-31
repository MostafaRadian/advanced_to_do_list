import 'package:flutter/material.dart';
import 'package:tododayapp_p/models/task-provider.dart';
import 'package:tododayapp_p/widgets/tasks_list.dart';
import 'package:tododayapp_p/screens/AddTaskScreen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddTask();
            },
          );
        },
        backgroundColor: Colors.red[400],
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
                Text(
                  "ToDayDo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Consumer<TaskData>(
              builder: (context, taskData, child) {
                return Text(
                  "${taskData.tasks.length} Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TasksList(), // Remove the `tasks` parameter
              ),
            ),
          ],
        ),
      ),
    );
  }
}
