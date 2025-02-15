import 'package:flutter/material.dart';

class ListStudentScreen extends StatefulWidget {
  const ListStudentScreen({super.key});

  @override
  State<ListStudentScreen> createState() => _ListStudentScreenState();
}

class _ListStudentScreenState extends State<ListStudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Our Students"),),);
  }
}