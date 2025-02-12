import 'package:app/MOdels/task.dart';
import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  List<Task> toDoList =[
    Task(text: "Study Stateless Widget"),
    Task(text: "Study Statefull Widget"),
    Task(text: "Study List"),
    Task(text: "Study Inteface"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My ToDo List"),),
      body: ListView(
        children: toDoList.map((t)=> ListTile()).toList(),
      ),
    );
  }
}