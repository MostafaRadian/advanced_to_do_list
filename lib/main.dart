import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tododayapp_p/models/task-provider.dart';
import 'package:tododayapp_p/screens/TasksScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskData() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:TasksScreen(),
      ),
    );
  }
}