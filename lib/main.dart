import 'package:app/quotescreen.dart';
import 'package:app/todoScreen.dart';
import 'package:app/welcomescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: 'welcome',
    routes: {
      "welcome":(context)=>WelcomeScreen(),
      "quote":(context)=>QuoteScreen(),
      "todo":(context)=>ToDoScreen(),
      
    },
  );
  }
}
