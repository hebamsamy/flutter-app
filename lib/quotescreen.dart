import 'dart:math' as math;

import 'package:flutter/material.dart';

//Defination UI
//Moitor Change of Values

class QuoteScreen extends StatefulWidget {
  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  List<String> quotes = [
    "The only way to do great work is to love what you do. – Steve Jobs",
    "Success is not final, failure is not fatal: it is the courage to continue that counts. – Winston Churchill",
    "Believe you can and you're halfway there. – Theodore Roosevelt",
    "Do what you can, with what you have, where you are. – Theodore Roosevelt",
    "Dream big and dare to fail. – Norman Vaughan",
    "Opportunities don't happen, you create them. – Chris Grosser",
    "It does not matter how slowly you go as long as you do not stop. – Confucius",
    "Hardships often prepare ordinary people for an extraordinary destiny. – C.S. Lewis",
    "The best way to predict the future is to create it. – Peter Drucker",
    "If you're going through hell, keep going. – Winston Churchill"
  ];
  int flag = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Today Quate 😁"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              quotes[flag],
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: () {
                  var test = math.Random();
                  setState(() {
                    flag = test.nextInt(10);
                  });
                  print(flag);
                },
                child: Text(
                  "Get one",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ));
  }
}
