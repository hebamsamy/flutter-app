import 'package:app/MOdels/student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  bool isShowing = false;
  var formkey = GlobalKey<FormState>();
  RegisterdStudent student = RegisterdStudent(
      FirstName: "",
      LastName: "",
      Email: "",
      NationalID: "",
      Mobile: "",
      Age: 18);
  save() {
    //null 
    formkey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student Info"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
        child: Form(
            key: formkey,
            child: ListView(
              children: [
                TextFormField(
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This Field is Required";
                    } else if (value.length < 3) {
                      return "Name must be more than 3 letter";
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This Field is Required";
                    } else if (value.length < 3) {
                      return "Name must be more than 3 letter";
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This Field is Required";
                    } else if (value.length < 3) {
                      return "Name must be more than 3 letter";
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This Field is Required";
                    } else if (value.length < 3) {
                      return "Name must be more than 3 letter";
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
