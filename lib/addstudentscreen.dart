import 'dart:convert';

import 'package:app/MOdels/student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  bool isShowing = false;
  bool isloading = false;
  var formkey = GlobalKey<FormState>();
  RegisterdStudent student = RegisterdStudent(
      FirstName: "",
      LastName: "",
      Email: "",
      NationalID: "",
      Mobile: "",
      Age: 18);
  save() async {
    //null
    if (formkey.currentState!.validate()) {
      //save input data
      formkey.currentState!.save();
      //call Api
      setState(() {
        isloading = true;
      });
      Uri path = Uri.parse("https://api.mohamed-sadek.com/Student/POST");
      Map<String, String> header = {"Content-Type": "application/json"};
      Map<String, dynamic> body = {
        "FirstName": student.FirstName,
        "LastName": student.LastName,
        "Mobile": student.Mobile,
        "Email": student.Email,
        "NationalID": student.NationalID,
        "Age": student.Age
      };

      var res = await http.post(path, headers: header, body: json.encode(body));
      print(res.statusCode);
      print(res.body);
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student Info"),
        actions: [
          IconButton(
              onPressed: () {
                formkey.currentState!.reset();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: isloading
          ? Center(
              child: SpinKitDoubleBounce(
                color: Colors.deepPurple,
              ),
            )
          : Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
              child: Form(
                  key: formkey,
                  child: ListView(
                    children: [
                      TextFormField(
                        onSaved: (value) => setState(() {
                          student.FirstName = value!;
                        }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This Field is Required";
                          } else if (value.length < 3) {
                            return "Name must be more than 3 letter";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            label: Text("First Name"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (value) => setState(() {
                          student.LastName = value!;
                        }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This Field is Required";
                          } else if (value.length < 3) {
                            return "Name must be more than 3 letter";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            label: Text("Last Name"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (value) => setState(() {
                          student.NationalID = value!;
                        }),
                        validator: (value) {
                          RegExp pattern = RegExp(r'^[0-9]{14}$');
                          if (value == null || value.isEmpty) {
                            return "This Field is Required";
                          } else if (!pattern.hasMatch(value)) {
                            return "National ID must have 14 Digit";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text("National ID"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (value) => setState(() {
                          student.Mobile = value!;
                        }),
                        validator: (value) {
                          RegExp pattern = RegExp(r'^[0-9]{11}$');

                          if (value == null || value.isEmpty) {
                            return "This Field is Required";
                          } else if (!pattern.hasMatch(value)) {
                            return "Mobile Number must have 14 Digit";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            label: Text("Mobile"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (value) => setState(() {
                          student.Email = value!;
                        }),
                        validator: (value) {
                          RegExp pattern = RegExp(
                              r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$');
                          if (value == null || value.isEmpty) {
                            return "This Field is Required";
                          } else if (!pattern.hasMatch(value)) {
                            return "Email address must be like example@gmail.com ";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text("Email"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (value) => setState(() {
                          student.Age = int.parse(value!);
                        }),
                        validator: (value) {
                          RegExp pattern = RegExp(r'^[0-9]{2}$');
                          if (value == null || value.isEmpty) {
                            return "This Field is Required";
                          } else if (!pattern.hasMatch(value)) {
                            return "age must be Digit";
                          } else if (int.parse(value) > 60 ||
                              int.parse(value) < 18) {
                            return "age must between 18 and 60";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text("Age"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // TextFormField(
                      //   obscureText: isShowing ,
                      //   keyboardType: TextInputType.text,
                      //   decoration: InputDecoration(
                      //     suffix: InkWell(
                      //       onTap: (){
                      //         setState(() {
                      //           isShowing = !isShowing;
                      //         });
                      //       },
                      //       child:isShowing? Icon(Icons.remove_red_eye):Icon(Icons.remove_red_eye_outlined),
                      //     ),
                      //       label: Text("Password"),
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(20))),
                      // ),

                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: save,
                          // onPressed:()=> save(),
                          child: Text("Save Data"))
                    ],
                  )),
            ),
    );
  }
}
