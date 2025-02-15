import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: ,
          children: [
            // Image.network("https://th.bing.com/th/id/OIP.1d6tBbNiJTFQNEK_k0sSjQHaFj?rs=1&pid=ImgDetMain"),
            Image.asset("images/img.jpeg"),
            Text(
              "Welcome Back",
              style: TextStyle(
                  fontSize: 50, color: const Color.fromARGB(255, 25, 127, 178)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.heart_broken,color: Colors.red,size: 40,),
                Text("Join US ")
              ],
            ),
            TextButton(onPressed: (){
              Navigator.of(context).pushNamed("add-student");
            }, child: Text("Add Student")),
            TextButton(onPressed: (){
               Navigator.of(context).pushNamed("student-list");
            }, child: Text("See Students List")),
          ],
        ),
      ),
    );
  }
}
