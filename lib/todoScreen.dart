import 'package:app/MOdels/task.dart';
import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  List<Task> toDoList = [
    Task(text: "Study Stateless Widget"),
    Task(text: "Study Statefull Widget"),
    Task(text: "Study List"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
    Task(text: "Study Inteface"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text("My ToDo List"),
      ),
      body: ListView(
        children: toDoList
            .map((t) => ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("quote",arguments:t);
              },
                  title: Text(
                    t.text,
                    style: TextStyle(
                        decoration: t.status == Status.Done
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        color: t.status == Status.Done
                            ? Colors.green
                            : Colors.black),
                  ),
                  leading: IconButton(
                      onPressed: () {
                        setState(() {
                          toDoList.forEach((item) {
                            if (item.id == t.id) {
                              item.status = Status.Done;
                            }
                          });
                        });
                      },
                      icon: Icon(Icons.check)),
                  trailing:
                      IconButton(onPressed: () {
                        setState(() {
                          toDoList = toDoList.where((item)=> item.id != t.id).toList();
                        });
                      }, icon: Icon(Icons.delete)),
                ))
            .toList(),
      ),
    );
  }
}
