import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListStudentScreen extends StatefulWidget {
  const ListStudentScreen({super.key});

  @override
  State<ListStudentScreen> createState() => _ListStudentScreenState();
}

class _ListStudentScreenState extends State<ListStudentScreen> {
  List students = [];
  @override
  void initState() {
    load();
  }

  load() async {
    Uri path = Uri.parse("https://api.mohamed-sadek.com/Student/Get");
    Map<String, String> header = {"Content-Type": "application/json"};
    var res = await http.get(path, headers: header);
    print(res.statusCode);
    List temp = json.decode(res.body)["Data"];
    //map dymainc to Student
    setState(() {
      students = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Students"),
      ),
      body: ListView(
        children: students.map((std) => Text(std["Name"])).toList(),
      ),
    );
  }
}
