import 'dart:html';

import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({ Key? key }) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
                  child: Image.asset("asset/images/login.png"),
                ),
                Text("FORGET PASSWORD" ,style: TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Text("hey"),
                Text("Enter the email address associated with your account",
                style: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.normal),
                ),
          ],
        ),
      ),
      ),      
    );
  }
}