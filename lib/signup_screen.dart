import 'package:flutter/material.dart';
import 'package:splash_screen/login_screen.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  final _loginKey = GlobalKey<FormState>();
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        child: Center(
          child: Form(
            key: _loginKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset("asset/images/login.png"),
                ),
                Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height:10),
                Text(
                  "Sign up to get started!",
                  style:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          RegExp(r'^[a-zA-Z]$').hasMatch(value)) {
                        return "Enter Your name";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                       contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        labelText: "Full Name", hintText: 'Enter your name' ,
                        labelStyle: TextStyle(color: Colors.black)
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value)) {
                        return "Enter Valid Email Address";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                       contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        labelText: "Email", hintText: 'Enter your Email',
                        labelStyle: TextStyle(color: Colors.black),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isNotEmpty && value.length > 8) {
                        return null;
                      }
                      return "Enter Password";
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                       contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        labelText: 'Password', hintText: 'Enter your password',
                        labelStyle: TextStyle(color: Colors.black),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isNotEmpty &&
                          RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value)) {
                        return null;
                      } else {
                        return "Enter your Phone number";
                      }
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                       contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      labelText: 'Phone number',
                      hintText: 'Enter your Phone number',
                      labelStyle: TextStyle(color: Colors.black)
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        }),
                    Text(
                      "By Singing up, you accept the terms of condition \n and privacy policy",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  height: 40.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_loginKey.currentState?.validate() == true) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()), (route) {
                                  return false;
                                });
                      }
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.black,
                    shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                    
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Text('Already have an account?',style: TextStyle(
                      fontSize: 12.0
                    ),),
                    GestureDetector(
                      onTap: () {Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),(route)=>false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('login', style: TextStyle(
                          fontSize: 13.0,decoration: TextDecoration.underline
                        ), ),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
